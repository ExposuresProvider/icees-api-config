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
    name = "Fexofenadine",
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
        "SMILES:CC(C)(C(O):O)C1CCC(CC1)C(O)CCCN2CCC(CC2)C(O)(C3CCCCC3)C4CCCCC4",
        "CAS:159389-12-5",
        "CAS:76815-58-2",
        "CAS:83799-24-0",
        "MESH:C093230",
        "CHEMBL:CHEMBL914",
        "PUBCHEM:3348",
        "RXCUI:1116528",
        "RXCUI:1670344",
        "RXCUI:1192737",
        "RXCUI:997512",
        "RXCUI:997515",
        "RXCUI:997422",
        "RXCUI:997484",
        "RXCUI:997493",
        "RXCUI:997502",
        "RXCUI:1488053",
        "RXCUI:1190331",
        "RXCUI:1190334",
        "RXCUI:997406",
        "RXCUI:997415",
        "RXCUI:997420",
        "RXCUI:997482",
        "RXCUI:997488",
        "RXCUI:997491",
        "RXCUI:997494",
        "RXCUI:997501",
        "RXCUI:997550",
        "UMLSCUI:C3163531",
        "UMLSCUI:C4048787",
        "UMLSCUI:C3247651",
        "UMLSCUI:C0716180",
        "UMLSCUI:C1616745",
        "UMLSCUI:C0938972",
        "UMLSCUI:C1965892",
        "UMLSCUI:C1813542",
        "UMLSCUI:C0875865",
        "UMLSCUI:C3709686",
        "UMLSCUI:C3245135",
        "UMLSCUI:C3245138",
        "UMLSCUI:C0976924",
        "UMLSCUI:C1576499",
        "UMLSCUI:C0976919",
        "UMLSCUI:C1964496",
        "UMLSCUI:C0976920",
        "UMLSCUI:C1813539",
        "UMLSCUI:C0976921",
        "UMLSCUI:C0976923",
        "UMLSCUI:C0976918",
        "SCTID:372522002",
        "SCTID:108653007",
        "SCTID:376716006",
        "SCTID:371748006",
        "SCTID:320828002",
        "SCTID:320826003",
        "SCTID:371749003",
        "SCTID:108650005",
        "SCTID:423074002",
        "SCTID:371750003",
        "SCTID:400883003",
        "SCTID:371751004",
        "SCTID:409176001"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1116528",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1670344",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1192737",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "997512",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "997515",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "997422",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "997484",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "997493",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "997502",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1488053",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1190331",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1190334",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "997406",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "997415",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "997420",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "997482",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "997488",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "997491",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "997494",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "997501",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "997550",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        }
    ]
}