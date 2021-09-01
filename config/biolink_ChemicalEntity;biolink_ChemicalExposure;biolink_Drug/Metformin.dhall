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
        "PUBCHEM.COMPOUND:4091",
        "RxNorm:1992685",
        "RxNorm:1992693",
        "RxNorm:1992698",
        "RxNorm:1992701",
        "RxNorm:1862685",
        "RxNorm:1862691",
        "RxNorm:1862695",
        "RxNorm:1862700",
        "RxNorm:1043563",
        "RxNorm:1043570",
        "RxNorm:1043578",
        "RxNorm:860975",
        "RxNorm:860981",
        "RxNorm:861004",
        "RxNorm:861007",
        "RxNorm:861010",
        "RxNorm:861021",
        "RxNorm:861025",
        "RxNorm:861731",
        "RxNorm:861736",
        "RxNorm:861740",
        "RxNorm:861743",
        "RxNorm:861748",
        "RxNorm:861753",
        "RxNorm:861760",
        "RxNorm:861763",
        "RxNorm:861769",
        "RxNorm:861783",
        "RxNorm:861787",
        "RxNorm:861790",
        "RxNorm:861795",
        "RxNorm:861806",
        "RxNorm:861816",
        "RxNorm:861819",
        "RxNorm:861822",
        "RxNorm:899989",
        "RxNorm:899996",
        "RxNorm:1368385",
        "RxNorm:1368392",
        "RxNorm:1545150",
        "RxNorm:1545157",
        "RxNorm:1545161",
        "RxNorm:1545164",
        "RxNorm:1593058",
        "RxNorm:1593068",
        "RxNorm:1593070",
        "RxNorm:1593072",
        "RxNorm:1664315",
        "RxNorm:1664323",
        "RxNorm:1664326",
        "RxNorm:1665367",
        "RxNorm:1796089",
        "RxNorm:1796094",
        "RxNorm:1807888",
        "RxNorm:1807894",
        "RxNorm:1807915",
        "RxNorm:1807917",
        "RxNorm:1810997",
        "RxNorm:1811002",
        "RxNorm:1811006",
        "RxNorm:1811010",
        "RxNorm:1243020",
        "RxNorm:1243027",
        "RxNorm:1243034",
        "RxNorm:1243827",
        "RxNorm:1243842",
        "RxNorm:1243846",
        "RxNorm:1940496",
        "UMLS:C4535600",
        "UMLS:C4535608",
        "UMLS:C4535612",
        "UMLS:C4535615",
        "UMLS:C4300851",
        "UMLS:C4300857",
        "UMLS:C4300861",
        "UMLS:C4300866",
        "UMLS:C2948201",
        "UMLS:C2948208",
        "UMLS:C2948215",
        "UMLS:C0978484",
        "UMLS:C1329024",
        "UMLS:C0978482",
        "UMLS:C0978483",
        "UMLS:C0978485",
        "UMLS:C1443753",
        "UMLS:C1329173",
        "UMLS:C1168839",
        "UMLS:C1168837",
        "UMLS:C1168838",
        "UMLS:C0977187",
        "UMLS:C0977189",
        "UMLS:C0977192",
        "UMLS:C1329120",
        "UMLS:C1329121",
        "UMLS:C1876536",
        "UMLS:C1612317",
        "UMLS:C2356104",
        "UMLS:C2356105",
        "UMLS:C1168832",
        "UMLS:C1168833",
        "UMLS:C1165145",
        "UMLS:C1876537",
        "UMLS:C1615632",
        "UMLS:C2732708",
        "UMLS:C2733400",
        "UMLS:C3534995",
        "UMLS:C3534994",
        "UMLS:C3848734",
        "UMLS:C3848733",
        "UMLS:C3848732",
        "UMLS:C3848731",
        "UMLS:C3859442",
        "UMLS:C3859451",
        "UMLS:C3859453",
        "UMLS:C3859455",
        "UMLS:C4050749",
        "UMLS:C4050757",
        "UMLS:C4050759",
        "UMLS:C4051104",
        "UMLS:C4256513",
        "UMLS:C4256512",
        "UMLS:C4282270",
        "UMLS:C4282269",
        "UMLS:C4282268",
        "UMLS:C4281893",
        "UMLS:C4290617",
        "UMLS:C4290616",
        "UMLS:C4290615",
        "UMLS:C4290614",
        "UMLS:C3264600",
        "UMLS:C3264607",
        "UMLS:C3264614",
        "UMLS:C3264970",
        "UMLS:C3264980",
        "UMLS:C3264984",
        "UMLS:C4519487",
        "SNOMED:372567009",
        "SNOMED:734558009",
        "SNOMED:109083009",
        "SNOMED:325278007",
        "SNOMED:325279004",
        "SNOMED:409366006",
        "SNOMED:376701008",
        "SNOMED:409189007",
        "SNOMED:441071009",
        "SNOMED:441011003",
        "SNOMED:409188004",
        "SNOMED:426046000",
        "SNOMED:409187009",
        "SNOMED:409122001",
        "SNOMED:409121008",
        "SNOMED:419873003",
        "SNOMED:425651000",
        "SNOMED:409123006",
        "SNOMED:419575000",
        "SNOMED:409125004",
        "SNOMED:409124000",
        "SNOMED:409365005",
        "SNOMED:409363003",
        "SNOMED:409364009",
        "SNOMED:109081006",
        "SNOMED:398793002",
        "SNOMED:438340003",
        "SNOMED:427522005",
        "SNOMED:418835009",
        "SNOMED:325271001",
        "SNOMED:409120009",
        "SNOMED:409362008",
        "SNOMED:714599005",
        "SNOMED:715703007",
        "SNOMED:714780003",
        "SNOMED:715702002",
        "SNOMED:714779001",
        "SNOMED:714686000",
        "SNOMED:448801000",
        "SNOMED:411533003",
        "SNOMED:386047000",
        "SNOMED:409361001",
        "SNOMED:443206001",
        "SNOMED:443109002",
        "SNOMED:409197000",
        "SNOMED:448832004",
        "SNOMED:448833009",
        "SNOMED:448802007"
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
            "biolink:ChemicalEntity",
            "biolink:ChemicalExposure",
            "biolink:Drug"
        ]
    },
    binning_strategy = max_cutoff 2
}