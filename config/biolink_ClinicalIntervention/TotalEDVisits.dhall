let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let count_if = meta.count_if
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "TotalEDVisits",
    identifiers = [
        "NCIT:C53513",
        "UMLS:C0562508",
        "NCIT:C150760",
        "NCIT:C68605",
        "UMLS:C2348993",
        "SCTID:103324002"
    ],
    mapping = count_if [
        "AsthmaDx",
        "CroupDx",
        "ReactiveAirwayDx",
        "CoughDx",
        "PneumoniaDx"
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            "2",
            "3",
            "4",
            "5",
            "6",
            "7",
            "8",
            "9",
            ">9"
        ],
        categories = [
            "biolink:ClinicalIntervention"
        ]
    },
    binning_strategy = max_cutoff 10
}