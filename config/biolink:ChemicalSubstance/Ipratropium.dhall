let meta = ../../common/meta.dhall
let ICEESAPIType = meta.ICEESAPIType
let Mapping = meta.Mapping
let NearestMapping = meta.NearestMapping
let generic_fhir_mapping = meta.generic_fhir_mapping
let environmental_mapping = meta.environmental_mapping
let avg = meta.avg
let max = meta.max
let prev_date = meta.prev_date
let integer = meta.integer
let range = meta.range
let string = meta.string
let enum = meta.enum
let number = meta.number
let cut = meta.cut
let qcut = meta.qcut
let range_bins = meta.range_bins
let no_binning = meta.no_binning
let replace = meta.replace
let suffix = meta.suffix
let no_rename = meta.no_rename
let nearest_point_distance = meta.nearest_point_distance
let nearest_point_attribute = meta.nearest_point_attribute
let nearest_feature_distance = meta.nearest_feature_distance
let nearest_feature_attribute = meta.nearest_feature_attribute
let no_identifiers = meta.no_identifiers
let no_categories = meta.no_categories
in {
    name = "Ipratropium",
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
    binning_strategies = [
        {
            method = range_bins {
                bins = [
                    0.0,
                    1.0,
                    2.0,
                    Infinity
                ],
                right = False,
                include_lowest = True,
                labels = [
                    "0",
                    "1",
                    ">1"
                ]
            },
            suffix = ""
        }
    ],
    identifiers = [
        "SMILES:CC(C)[N+]1(C2CCC1CC(C2)OC(:O)C(CO)C3CCCCC3)C.[BR-]",
        "CAS:66985-17-9",
        "MESH:D009241",
        "CHEMBL:CHEMBL1464005",
        "PUBCHEM:657309",
        "PUBCHEM:3746",
        "PUBCHEM:43232",
        "PUBCHEM:25897919",
        "PUBCHEM:6604365",
        "RXCUI:836366",
        "RXCUI:836368",
        "RXCUI:1797835",
        "RXCUI:1797845",
        "RXCUI:1190225",
        "RXCUI:1437704",
        "RXCUI:108889",
        "RXCUI:107667",
        "RXCUI:836286",
        "RXCUI:836343",
        "RXCUI:836344",
        "RXCUI:836347",
        "RXCUI:836354",
        "RXCUI:836356",
        "RXCUI:836358",
        "RXCUI:836361",
        "RXCUI:1362214",
        "RXCUI:1797833",
        "RXCUI:1797844",
        "RXCUI:1437702",
        "RXCUI:1190220",
        "RXCUI:1945738",
        "UMLSCUI:C1971016",
        "UMLSCUI:C1639201",
        "UMLSCUI:C1613500",
        "UMLSCUI:C0713820",
        "UMLSCUI:C3245071",
        "UMLSCUI:C1585547",
        "UMLSCUI:C0361785",
        "UMLSCUI:C0360052",
        "UMLSCUI:C1163939",
        "UMLSCUI:C1533036",
        "UMLSCUI:C1995668",
        "UMLSCUI:C0704800",
        "UMLSCUI:C0361081",
        "UMLSCUI:C0704801",
        "UMLSCUI:C0981517",
        "UMLSCUI:C0354769",
        "UMLSCUI:C0791615",
        "UMLSCUI:C1995694",
        "UMLSCUI:C1995842",
        "UMLSCUI:C1164703",
        "UMLSCUI:C3245066",
        "UMLSCUI:C4529300",
        "SCTID:372518007",
        "SCTID:386881005",
        "SCTID:725862005",
        "SCTID:108624006",
        "SCTID:423164002",
        "SCTID:421685007",
        "SCTID:430316007",
        "SCTID:430475000",
        "SCTID:375220000",
        "SCTID:331054006",
        "SCTID:371689004",
        "SCTID:414537003",
        "SCTID:320348004",
        "SCTID:320350007",
        "SCTID:414538008",
        "SCTID:320339009",
        "SCTID:320340006",
        "SCTID:320346000",
        "SCTID:371694004",
        "SCTID:320347009",
        "SCTID:377496003",
        "SCTID:320345001",
        "SCTID:377493006"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "836366",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1190225",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1437704",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "836286",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1190220",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1362214",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "108889",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1437702",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1945738",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "836368",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1797835",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1797845",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "107667",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "836343",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "836344",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "836347",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "836354",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "836356",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "836358",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "836361",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1797833",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1797844",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        }
    ]
}