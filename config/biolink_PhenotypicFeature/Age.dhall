let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "Age",
    identifiers = [
        "NCIT:C25150",
        "UMLS:C0001779",
        "NCIT:C69217",
        "UMLS:C2348002",
        "NCIT:C37908",
        "UMLS:C1510829",
        "SNOMED:424144002",
        "SNOMED:397669002"
    ],
    feature = {
        feature_type = enum [
            "0-2",
            "3-17",
            "18-34",
            "35-50",
            "51-69",
            "70-89"
        ],
        categories = [
            "biolink:PhenotypicFeature"
        ]
    },
    binning_strategy = max_cutoff 5
}