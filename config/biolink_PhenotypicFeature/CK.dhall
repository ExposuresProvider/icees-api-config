let meta = ../../common/meta.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let integer = meta.integer
in {
    name = "CK",
    identifiers = [
        "NCIT:C113245",
        "UMLSCUI:C0010287",
        "NCIT:C64489",
        "UMLSCUI:C0201973",
        "NCIT:C16473",
        "UMLSCUI:C0010289",
        "NCIT:C122778",
        "UMLSCUI:C0010290",
        "NCIT:C64491",
        "UMLSCUI:C0523584",
        "CHEBI:73354",
        "MONDO:0007402",
        "PUBCHEM.COMPOUND:135273135",
        "PUBCHEM.COMPOUND:318694158",
        "PUBCHEM.COMPOUND:160743788",
        "PUBCHEM.COMPOUND:318694156",
        "PUBCHEM.COMPOUND:160743818",
        "PUBCHEM.COMPOUND:160743757",
        "PUBCHEM.COMPOUND:318694157",
        "PUBCHEM.COMPOUND:160743807",
        "PUBCHEM.COMPOUND:160743839",
        "PUBCHEM.COMPOUND:318694023",
        "PUBCHEM.COMPOUND:318694159",
        "PUBCHEM.COMPOUND:318693369",
        "PUBCHEM.COMPOUND:318693366",
        "PUBCHEM.COMPOUND:318694022",
        "PUBCHEM.COMPOUND:402425871",
        "PUBCHEM.COMPOUND:405230663",
        "PUBCHEM.COMPOUND:405229273",
        "PUBCHEM.COMPOUND:405230665",
        "PUBCHEM.COMPOUND:405230667",
        "PUBCHEM.COMPOUND:160743652",
        "PUBCHEM.COMPOUND:318693368",
        "PUBCHEM.COMPOUND:318694024",
        "PUBCHEM.COMPOUND:318693364",
        "PUBCHEM.COMPOUND:318694160",
        "PUBCHEM.COMPOUND:318694021",
        "PUBCHEM.COMPOUND:354355136",
        "PUBCHEM.COMPOUND:160730548",
        "PUBCHEM.COMPOUND:160743768",
        "PUBCHEM.COMPOUND:160743828",
        "PUBCHEM.COMPOUND:160743632",
        "PUBCHEM.COMPOUND:160730546",
        "PUBCHEM.COMPOUND:160743778",
        "PUBCHEM.COMPOUND:405230664",
        "PUBCHEM.COMPOUND:176259324"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "13969-1"
        }
    ],
    feature = {
        feature_type = integer,
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}