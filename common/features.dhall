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
    mapValue = {
        type = merge {
            String = \(ts: TypeString) -> "string",
	    Integer = \(ti: TypeInteger) -> "integer",
 	    Number = "number"
        } v.feature.feature_type,
	maximum = merge {
            String = \(ts: TypeString) -> None Integer,
	    Integer = \(ti: TypeInteger) -> ti.maximum,
	    Number = None Integer
	} v.feature.feature_type,
	minimum = merge {
            String = \(ts: TypeString) -> None Integer,
	    Integer = \(ti: TypeInteger) -> ti.minimum,
	    Number = None Integer
	} v.feature.feature_type,
	enum = merge {
            String = \(ts: TypeString) -> ts.enum,
	    Integer = \(ti: TypeInteger) -> None (List Text),
	    Number = None (List Text)
	} v.feature.feature_type
    }
}

let convertTable = \(v: Table) -> {
    mapKey = v.name,
    mapValue = List/map FeatureVariable.Type FeatureEntry convertFeature v.variables
}

in \(d: DataSet) -> List/map Table TableEntry convertTable d
