let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "CardiovascularSupportMilrinone_gttRx",
    identifiers = [
        "CHEBI:50693",
        "CHEBI:34850",
        "PUBCHEM:138109998",
        "PUBCHEM:13669855",
        "PUBCHEM:12960308",
        "PUBCHEM:12873360",
        "PUBCHEM:12799331",
        "PUBCHEM:172293",
        "PUBCHEM:4197",
        "NCIT:C61848",
        "UMLSCUI:C0128513",
        "NCIT:C29263",
        "UMLSCUI:C0600487",
        "RxNorm:52769",
        "RxNorm:1791839",
        "RxNorm:155120",
        "RxNorm:405198",
        "RxNorm:406097",
        "RxNorm:1164730",
        "RxNorm:377131",
        "RxNorm:576175",
        "RxNorm:329186",
        "RxNorm:345853",
        "RxNorm:702030",
        "RxNorm:362917",
        "RxNorm:545298",
        "RxNorm:1791838",
        "RxNorm:1791853",
        "RxNorm:545297",
        "RxNorm:807269",
        "RxNorm:362967",
        "RxNorm:347930",
        "RxNorm:1791841",
        "RxNorm:1791855",
        "SCTID:373441005",
        "SCTID:108481006",
        "SCTID:293524001",
        "SCTID:776794001",
        "SCTID:374513002",
        "SCTID:374512007",
        "LOINC:LP171621-8",
        "LOINC:LP165031-8",
        "LOINC:LP165032-6",
        "LOINC:LP165033-4"
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