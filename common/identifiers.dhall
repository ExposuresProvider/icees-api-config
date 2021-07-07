let List/map = https://prelude.dhall-lang.org/List/map
let meta = ./meta.dhall
let DataSet = meta.DataSet
let Table = meta.Table
let FeatureVariable = meta.FeatureVariable

let Identifiers = List Text

let IdentifiersEntry = {
    mapKey: Text,
    mapValue: Identifiers
}

let TableEntry = {
    mapKey: Text,
    mapValue: List IdentifiersEntry
}

let convertFeature = \(v: FeatureVariable.Type) -> {
    mapKey = v.name,
    mapValue = v.feature.categories
}

let convertTable = \(v: Table) -> {
    mapKey = v.name,
    mapValue = List/map FeatureVariable.Type IdentifiersEntry convertFeature v.variables
}

in \(d:DataSet) -> List/map Table TableEntry convertTable d