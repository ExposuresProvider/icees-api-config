let List/map = https://prelude.dhall-lang.org/List/map
let meta = ./meta.dhall
let DataSet = meta.DataSet
let Table = meta.Table
let TypeString = meta.TypeString
let TypeInteger = meta.TypeInteger
let FeatureVariable = meta.FeatureVariable

let Feature = {
    type: Text,
    maximum: Optional Integer,
    minimum: Optional Integer,
    enum: Optional (List Text)
}

let FeatureEntry = {
    mapKey: Text,
    mapValue: Feature
}

let TableEntry = {
    mapKey: Text,
    mapValue: List FeatureEntry
}

let convertFeature = \(v: FeatureVariable.Type) -> {
    mapKey = v.name,
    mapValue = merge {
        String = \(ts: TypeString) -> {
	    type = "string",
	    maximum = None Integer,
	    minimum = None Integer,
	    enum = ts.enum
	},
	Integer = \(ti: TypeInteger) -> {
	    type = "integer",
	    maximum = ti.maximum,
	    minimum = ti.minimum,
	    enum = None (List Text)
	},
	Number = {
	    type = "number",
	    maximum = None Integer,
	    minimum = None Integer,
	    enum = None (List Text)
	}
    } v.feature.feature_type.contents
}

let convertTable = \(v: Table) -> {
    mapKey = v.name,
    mapValue = List/map FeatureVariable.Type FeatureEntry convertFeature v.variables
}

in \(d: DataSet) -> List/map Table TableEntry convertTable d
