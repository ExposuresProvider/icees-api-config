let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "EndometriosisDx",
    identifiers = [
        "SNOMED:396224008",
        "SNOMED:129103003",
        "SNOMED:53913001",
        "SNOMED:724457006",
        "SNOMED:26681001",
        "SNOMED:128726006",
        "SNOMED:198247003",
        "SNOMED:35543003",
        "SNOMED:50993001",
        "SNOMED:233651009",
        "SNOMED:44601009",
        "SNOMED:717700009",
        "SNOMED:396223002",
        "SNOMED:266589005",
        "SNOMED:38780008",
        "SNOMED:76376003",
        "SNOMED:61640006",
        "SNOMED:9563009",
        "SNOMED:57493005",
        "SNOMED:89001007",
        "SNOMED:65099004",
        "SNOMED:8421002",
        "SNOMED:5562006",
        "SNOMED:17829005",
        "SNOMED:397318008",
        "SNOMED:237115002",
        "SNOMED:237117005",
        "SNOMED:84305006",
        "SNOMED:735621005",
        "SNOMED:22611009",
        "SNOMED:10535001",
        "SNOMED:5327000",
        "SNOMED:64286001",
        "SNOMED:717698000",
        "SNOMED:717699008",
        "SNOMED:724456002",
        "SNOMED:198251001",
        "SNOMED:724455003",
        "SNOMED:52533003",
        "SNOMED:314049009",
        "SNOMED:712584009",
        "SNOMED:715806006",
        "SNOMED:713174005",
        "SNOMED:724454004",
        "SNOMED:416155004",
        "SNOMED:263638005"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Condition",
            code_is_regex = True,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-9-cm",
            code = "(617)[.].*"
        },
        {
            resource = "Condition",
            code_is_regex = True,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-10-cm",
            code = "(N80)[.].*"
        }
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:Disease"
        ]
    },
    binning_strategy = max_cutoff 2
}