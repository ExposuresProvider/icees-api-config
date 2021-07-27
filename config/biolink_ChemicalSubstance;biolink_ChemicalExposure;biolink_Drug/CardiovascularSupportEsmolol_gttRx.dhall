let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "CardiovascularSupportEsmolol_gttRx",
    identifiers = [
        "CHEBI:88206",
        "CHEBI:4857",
        "NCIT:C72617",
        "UMLSCUI:C0116569",
        "NCIT:C47519",
        "UMLSCUI:C0700606",
        "PUBCHEM:126961356",
        "PUBCHEM:101731067",
        "PUBCHEM:101731066",
        "PUBCHEM:71587371",
        "PUBCHEM:71316428",
        "PUBCHEM:71316427",
        "PUBCHEM:71316422",
        "PUBCHEM:66587026",
        "PUBCHEM:46878362",
        "PUBCHEM:28125476",
        "PUBCHEM:25271656",
        "PUBCHEM:133620",
        "PUBCHEM:104769",
        "PUBCHEM:59768",
        "RxNorm:49737",
        "RxNorm:1736540",
        "RxNorm:377103",
        "RxNorm:1736542",
        "RxNorm:1162506",
        "RxNorm:92016",
        "RxNorm:329732",
        "RxNorm:405860",
        "RxNorm:330690",
        "RxNorm:979427",
        "RxNorm:979431",
        "RxNorm:979435",
        "RxNorm:567098",
        "RxNorm:576525",
        "RxNorm:567102",
        "RxNorm:1736544",
        "RxNorm:1736557",
        "RxNorm:979429",
        "RxNorm:979433",
        "RxNorm:979437",
        "RxNorm:238246",
        "RxNorm:403885",
        "RxNorm:238245",
        "SCTID:372847006",
        "SCTID:77856005",
        "SCTID:35318005",
        "SCTID:293969000",
        "SCTID:292427001",
        "SCTID:318624002",
        "SCTID:775833007",
        "SCTID:17033711000001101",
        "SCTID:374170004",
        "SCTID:407866009"
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:ChemicalSubstance",
            "biolink:ChemicalExposure",
            "biolink:Drug"
        ]
    },
    binning_strategy = max_cutoff 2
}