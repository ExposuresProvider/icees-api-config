let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "CardiovascularSupportEsmolol_gtt",
    identifiers = [
        "CHEBI:88206",
        "CHEBI:4857",
        "NCIT:C72617",
        "UMLS:C0116569",
        "NCIT:C47519",
        "UMLS:C0700606",
        "PUBCHEM.COMPOUND:126961356",
        "PUBCHEM.COMPOUND:101731067",
        "PUBCHEM.COMPOUND:101731066",
        "PUBCHEM.COMPOUND:71587371",
        "PUBCHEM.COMPOUND:71316428",
        "PUBCHEM.COMPOUND:71316427",
        "PUBCHEM.COMPOUND:71316422",
        "PUBCHEM.COMPOUND:66587026",
        "PUBCHEM.COMPOUND:46878362",
        "PUBCHEM.COMPOUND:28125476",
        "PUBCHEM.COMPOUND:25271656",
        "PUBCHEM.COMPOUND:133620",
        "PUBCHEM.COMPOUND:104769",
        "PUBCHEM.COMPOUND:59768",
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
        "SNOMED:372847006",
        "SNOMED:77856005",
        "SNOMED:35318005",
        "SNOMED:293969000",
        "SNOMED:292427001",
        "SNOMED:318624002",
        "SNOMED:775833007",
        "SNOMED:17033711000001101",
        "SNOMED:374170004",
        "SNOMED:407866009"
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:ChemicalEntity",
            "biolink:ChemicalExposure",
            "biolink:Drug"
        ]
    },
    binning_strategy = max_cutoff 2
}