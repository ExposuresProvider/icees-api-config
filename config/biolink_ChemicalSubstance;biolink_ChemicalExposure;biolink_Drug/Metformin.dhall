let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "Metformin",
    identifiers = [
        "SMILES:CN(C)C(:N)NC(:N)N",
        "CAS:657-24-9",
        "MESH:D008687",
        "PUBCHEM:4091",
        "RXCUI:1992685",
        "RXCUI:1992693",
        "RXCUI:1992698",
        "RXCUI:1992701",
        "RXCUI:1862685",
        "RXCUI:1862691",
        "RXCUI:1862695",
        "RXCUI:1862700",
        "RXCUI:1043563",
        "RXCUI:1043570",
        "RXCUI:1043578",
        "RXCUI:860975",
        "RXCUI:860981",
        "RXCUI:861004",
        "RXCUI:861007",
        "RXCUI:861010",
        "RXCUI:861021",
        "RXCUI:861025",
        "RXCUI:861731",
        "RXCUI:861736",
        "RXCUI:861740",
        "RXCUI:861743",
        "RXCUI:861748",
        "RXCUI:861753",
        "RXCUI:861760",
        "RXCUI:861763",
        "RXCUI:861769",
        "RXCUI:861783",
        "RXCUI:861787",
        "RXCUI:861790",
        "RXCUI:861795",
        "RXCUI:861806",
        "RXCUI:861816",
        "RXCUI:861819",
        "RXCUI:861822",
        "RXCUI:899989",
        "RXCUI:899996",
        "RXCUI:1368385",
        "RXCUI:1368392",
        "RXCUI:1545150",
        "RXCUI:1545157",
        "RXCUI:1545161",
        "RXCUI:1545164",
        "RXCUI:1593058",
        "RXCUI:1593068",
        "RXCUI:1593070",
        "RXCUI:1593072",
        "RXCUI:1664315",
        "RXCUI:1664323",
        "RXCUI:1664326",
        "RXCUI:1665367",
        "RXCUI:1796089",
        "RXCUI:1796094",
        "RXCUI:1807888",
        "RXCUI:1807894",
        "RXCUI:1807915",
        "RXCUI:1807917",
        "RXCUI:1810997",
        "RXCUI:1811002",
        "RXCUI:1811006",
        "RXCUI:1811010",
        "RXCUI:1243020",
        "RXCUI:1243027",
        "RXCUI:1243034",
        "RXCUI:1243827",
        "RXCUI:1243842",
        "RXCUI:1243846",
        "RXCUI:1940496",
        "UMLSCUI:C4535600",
        "UMLSCUI:C4535608",
        "UMLSCUI:C4535612",
        "UMLSCUI:C4535615",
        "UMLSCUI:C4300851",
        "UMLSCUI:C4300857",
        "UMLSCUI:C4300861",
        "UMLSCUI:C4300866",
        "UMLSCUI:C2948201",
        "UMLSCUI:C2948208",
        "UMLSCUI:C2948215",
        "UMLSCUI:C0978484",
        "UMLSCUI:C1329024",
        "UMLSCUI:C0978482",
        "UMLSCUI:C0978483",
        "UMLSCUI:C0978485",
        "UMLSCUI:C1443753",
        "UMLSCUI:C1329173",
        "UMLSCUI:C1168839",
        "UMLSCUI:C1168837",
        "UMLSCUI:C1168838",
        "UMLSCUI:C0977187",
        "UMLSCUI:C0977189",
        "UMLSCUI:C0977192",
        "UMLSCUI:C1329120",
        "UMLSCUI:C1329121",
        "UMLSCUI:C1876536",
        "UMLSCUI:C1612317",
        "UMLSCUI:C2356104",
        "UMLSCUI:C2356105",
        "UMLSCUI:C1168832",
        "UMLSCUI:C1168833",
        "UMLSCUI:C1165145",
        "UMLSCUI:C1876537",
        "UMLSCUI:C1615632",
        "UMLSCUI:C2732708",
        "UMLSCUI:C2733400",
        "UMLSCUI:C3534995",
        "UMLSCUI:C3534994",
        "UMLSCUI:C3848734",
        "UMLSCUI:C3848733",
        "UMLSCUI:C3848732",
        "UMLSCUI:C3848731",
        "UMLSCUI:C3859442",
        "UMLSCUI:C3859451",
        "UMLSCUI:C3859453",
        "UMLSCUI:C3859455",
        "UMLSCUI:C4050749",
        "UMLSCUI:C4050757",
        "UMLSCUI:C4050759",
        "UMLSCUI:C4051104",
        "UMLSCUI:C4256513",
        "UMLSCUI:C4256512",
        "UMLSCUI:C4282270",
        "UMLSCUI:C4282269",
        "UMLSCUI:C4282268",
        "UMLSCUI:C4281893",
        "UMLSCUI:C4290617",
        "UMLSCUI:C4290616",
        "UMLSCUI:C4290615",
        "UMLSCUI:C4290614",
        "UMLSCUI:C3264600",
        "UMLSCUI:C3264607",
        "UMLSCUI:C3264614",
        "UMLSCUI:C3264970",
        "UMLSCUI:C3264980",
        "UMLSCUI:C3264984",
        "UMLSCUI:C4519487",
        "SCTID:372567009",
        "SCTID:734558009",
        "SCTID:109083009",
        "SCTID:325278007",
        "SCTID:325279004",
        "SCTID:409366006",
        "SCTID:376701008",
        "SCTID:409189007",
        "SCTID:441071009",
        "SCTID:441011003",
        "SCTID:409188004",
        "SCTID:426046000",
        "SCTID:409187009",
        "SCTID:409122001",
        "SCTID:409121008",
        "SCTID:419873003",
        "SCTID:425651000",
        "SCTID:409123006",
        "SCTID:419575000",
        "SCTID:409125004",
        "SCTID:409124000",
        "SCTID:409365005",
        "SCTID:409363003",
        "SCTID:409364009",
        "SCTID:109081006",
        "SCTID:398793002",
        "SCTID:438340003",
        "SCTID:427522005",
        "SCTID:418835009",
        "SCTID:325271001",
        "SCTID:409120009",
        "SCTID:409362008",
        "SCTID:714599005",
        "SCTID:715703007",
        "SCTID:714780003",
        "SCTID:715702002",
        "SCTID:714779001",
        "SCTID:714686000",
        "SCTID:448801000",
        "SCTID:411533003",
        "SCTID:386047000",
        "SCTID:409361001",
        "SCTID:443206001",
        "SCTID:443109002",
        "SCTID:409197000",
        "SCTID:448832004",
        "SCTID:448833009",
        "SCTID:448802007"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1992685",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1992693",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1992698",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1992701",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1862685",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1862691",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1862695",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1862700",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1043563",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1043570",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1043578",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "860975",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "860981",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "861004",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "861007",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "861010",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "861021",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "861025",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "861731",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "861736",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "861740",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "861743",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "861748",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "861753",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "861760",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "861763",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "861769",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "861783",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "861787",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "861790",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "861795",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "861806",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "861816",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "861819",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "861822",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "899989",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "899996",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1368385",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1368392",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1545150",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1545157",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1545161",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1545164",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1593058",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1593068",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1593070",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1593072",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1664315",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1664323",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1664326",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1665367",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1796089",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1796094",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1807888",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1807894",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1807915",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1807917",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1810997",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1811002",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1811006",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1811010",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1243020",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1243027",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1243034",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1243827",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1243842",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1243846",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1940496",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        }
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