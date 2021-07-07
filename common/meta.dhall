let Nesting = https://prelude.dhall-lang.org/JSON/Nesting
let Tagged = https://prelude.dhall-lang.org/JSON/Tagged

{-
Currently there are six main sources FHIR-PIT maps feature variables: 
 * Generic FHIR mapping (Condition, Procedure, MedicationRequest, Observation) 
 * Specialized FHIR mapping (demographic, visit)
 * Environmental data
 * From geoid mapping (ACS) 
 * From lat, lon to nearest point (CAFO, landfill) 
 * From lat, lon to nearest feature (nearest road) 
-}

{-
For jq FHIR mapping, we use jq to extract feature.
-}
let JqFHIRMapping =
      { jq: Text
      }

{-
For generic FHIR mappings, we match data to ICEES feature variables according to FHIR resource, system, and code. By default, if either `system` or `code` contains `*`, it is considered as a glob, which matches zero or more characters. This allows us to map, for example, ICD 10 codes such as `E50.*`. This behavior can be modified by setting the optional `system_is_regex` or `code_is_regex` fields. When they are set to `True`, the system and code are parsed as regular expressions. When they are set to `False`, the system and code are not parsed as regular expressions or globs.
-}
let GenericMatch = {
    resource: Text, -- FHIR resource type 
    system: Text, -- FHIR system
    code: Text, -- FHIR code
    system_is_regex: Bool, -- system contains a regular expression
    code_is_regex: Bool -- code contains a regular expression
}

let GenericFHIRMapping = List GenericMatch


let FHIRMappingVisit = List Text

let SpecializedFHIRMapping =
      < Visit : FHIRMappingVisit
      | Age
      | Race
      | Sex
      | Ethnicity
      | Weight
      | Height
      | BMI
      >

let EnvironmentalMapping =
      { dataset : Text, column : Text }

let TypeInteger = {
    minimum : Optional Integer,
    maximum : Optional Integer
}

let TypeString = {
    enum : Optional (List Text)
}

let ICEESAPIType = < String : TypeString | Integer : TypeInteger | Number >

let GEOIDMapping = { dataset : Text, column : Text, datatype : Tagged ICEESAPIType }

let FeatureAttribute = { dataset : Text, name : Text, datatype : Tagged ICEESAPIType }

let Distance = {
    dataset : Text,
    maximum : Double
}

let NearestMapping =
      < FeatureAttribute : FeatureAttribute | Distance : Distance >

let Mapping =
      < JqFHIRMapping : JqFHIRMapping
      | GenericFHIRMapping : GenericFHIRMapping
      | SpecializedFHIRMapping : Tagged SpecializedFHIRMapping
      | EnvironmentalMapping : EnvironmentalMapping
      | GEOIDMapping : GEOIDMapping
      | NearestPointMapping : NearestMapping
      | NearestFeatureMapping : NearestMapping
      >

let no_mapping = None (Tagged Mapping)

let Category = Text

let ICEESFeature = {
    feature_type : Tagged ICEESAPIType,
    categories : List Category
}

let Identifiers = List Text

let Statistic = < Max | Min | Avg | StdDev | PrevDate >

let no_statistic = None Statistic

let RangeBins =
      { bins : List Double
      , right : Bool
      , include_lowest : Bool
      , labels : List Text
      }

let BinString = List Text

let Bins = < RangeBins : RangeBins | String : List (List Text) >

let BinningStrategy = < Cut : Natural | QCut : Natural | Bins : Bins >

let no_binning = None BinningStrategy

let no_identifiers = [] : Identifiers

let no_categories = [] : List Category

let FeatureVariable = {
    Type = {
        name : Text,
	mapping : Optional (Tagged Mapping),
	statistic : Optional Statistic,
        binning_strategy : Optional BinningStrategy,
        feature : ICEESFeature,
	identifiers : Identifiers
    },
    default = {
	mapping = no_mapping,
	statistic = no_statistic,
	binning_strategy = no_binning,
	identifiers = no_identifiers
    }
}

let tag = \(t: Type) -> \(a: t) -> {
        field = "tag",
	nesting = Nesting.Nested "param",
        contents = a
}

let Table = {
    name: Text,
    variables: List FeatureVariable.Type
}

let DataSet = List Table

in  {
    FeatureVariable = FeatureVariable,
    TypeString = TypeString,
    TypeInteger = TypeInteger,
    Mapping = Tagged Mapping,
    JqFHIRMapping = JqFHIRMapping,
    GenericFHIRMapping = GenericFHIRMapping,
    SpecializedFHIRMapping = SpecializedFHIRMapping,
    EnvironmentalMapping = EnvironmentalMapping,
    GEOIDMapping = GEOIDMapping,
    NearestMapping = NearestMapping,
    GenericMatch = GenericMatch,
    no_mapping = no_mapping,
    no_statistic = no_statistic,
    no_binning = no_binning,
    no_identifiers = no_identifiers,
    no_categories = no_categories,
    range = \ (minimum : Natural) -> \ (maximum : Natural) -> tag ICEESAPIType (ICEESAPIType.Integer {
        maximum = Some (Natural/toInteger maximum),
        minimum = Some (Natural/toInteger minimum)
    }),
    integer = tag ICEESAPIType (ICEESAPIType.Integer {
        maximum = None Integer,
        minimum = None Integer
    }),
    string = tag ICEESAPIType (ICEESAPIType.String {
        enum = None (List Text)
    }),
    enum = \(e : List Text) -> tag ICEESAPIType (ICEESAPIType.String {
        enum = Some e
    }),
    number = tag ICEESAPIType ICEESAPIType.Number,
    cut = \(a: Natural) -> Some (BinningStrategy.Cut a),
    qcut = \(a: Natural) -> Some (BinningStrategy.QCut a),
    range_bins = \ (rbs : RangeBins) -> Some (BinningStrategy.Bins (Bins.RangeBins rbs)),
    avg = Some Statistic.Avg,
    max = Some Statistic.Max,
    prev_date = Some Statistic.PrevDate,
    Table = Table,
    DataSet = DataSet,
    count_if = \(g: FHIRMappingVisit) -> Some (tag Mapping (Mapping.SpecializedFHIRMapping (tag SpecializedFHIRMapping (SpecializedFHIRMapping.Visit g)))),
    geoid_mapping = \(g: GEOIDMapping) -> Some (tag Mapping (Mapping.GEOIDMapping g)),
    environmental_mapping = \(e: EnvironmentalMapping) -> Some (tag Mapping (Mapping.EnvironmentalMapping e)),
    generic_fhir_mapping = \(g: GenericFHIRMapping) -> Some (tag Mapping (Mapping.GenericFHIRMapping g)),
    nearest_point_distance = \ (d : Distance) -> Some (tag Mapping (Mapping.NearestPointMapping (NearestMapping.Distance d))),
    nearest_point_attribute = \ (d : FeatureAttribute) -> Some (tag Mapping (Mapping.NearestPointMapping (NearestMapping.FeatureAttribute d))),
    nearest_feature_distance = \ (d : Distance) -> Some (tag Mapping (Mapping.NearestFeatureMapping (NearestMapping.Distance d))),
    nearest_feature_attribute = \ (d : FeatureAttribute) -> Some (tag Mapping (Mapping.NearestFeatureMapping (NearestMapping.FeatureAttribute d)))
}
