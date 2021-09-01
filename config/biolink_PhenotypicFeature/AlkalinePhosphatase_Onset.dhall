let meta = ../../common/meta.dhall
let integer = meta.integer
in {
    name = "AlkalinePhosphatase_Onset",
    identifiers = [
        "SNOMED:88810008",
        "SNOMED:785821009",
        "SNOMED:889401000000102",
        "SNOMED:271234008",
        "MESH:D000469",
        "LOINC:LP15346-7",
        "LOINC:LG4193-1",
        "LOINC:LG2774-0",
        "LOINC:LP44703-4"
    ],
    feature = {
        feature_type = integer,
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}