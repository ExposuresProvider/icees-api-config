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

let Statistic = < Max | Min | Avg | StdDev | PrevDate >

let RenameAs = < Suffix : Text | Replace : Text | NoRename >

let StatisticVariant = {
    statistic : Statistic,
    rename : RenameAs
}

let EnvironmentalMapping =
      { dataset : Text, column : Text, statistics : List StatisticVariant }

let TypeInteger = {
    minimum : Optional Integer,
    maximum : Optional Integer
}

let TypeString = {
    enum : Optional (List Text)
}

let ICEESAPIType = < String : TypeString | Integer : TypeInteger | Number >

let GEOIDMapping = { dataset : Text, column : Text, datatype : ICEESAPIType }

let FeatureAttribute = { dataset : Text, name : Text, datatype : ICEESAPIType }

let Distance = {
    dataset : Text,
    maximum : Double
}

let NearestMapping =
      < FeatureAttribute : FeatureAttribute | Distance : Distance >

let Mapping =
      < JqFHIRMapping : JqFHIRMapping
      | GenericFHIRMapping : GenericFHIRMapping
      | SpecializedFHIRMapping : SpecializedFHIRMapping
      | EnvironmentalMapping : EnvironmentalMapping
      | GEOIDMapping : GEOIDMapping
      | NearestPointMapping : NearestMapping
      | NearestFeatureMapping : NearestMapping
      | NoMapping
      >

let Category = Text

let ICEESFeature = {
    feature_type : ICEESAPIType,
    categories : List Category
}

let Identifiers = List Text

let RangeBins =
      { bins : List Double
      , right : Bool
      , include_lowest : Bool
      , labels : List Text
      }

let BinString = List Text

let Bins = < RangeBins : RangeBins | String : List (List Text) >

let BinningMethod = < Cut : Natural | QCut : Natural | Bins : Bins | NoBinning >

let BinningStrategy = {
    method : BinningMethod,
    suffix : Text
}

let FeatureVariable = {
    Type = {
        name : Text,
	mapping : Optional Mapping,
        binning_strategies : List BinningStrategy,
        feature : ICEESFeature,
	identifiers : Identifiers
    },
    default = {
	mapping = None Mapping,
	binning_strategies = [{
            method = BinningMethod.NoBinning,
            suffix = ""
        }],
	identifiers = [] : Identifiers
    }
}

let VariableVariant = {
    name : Text,
    rename : RenameAs
}

let Table = {
    tableName: Text,
    variable_name : Text,
    variable_variants: Optional (List VariableVariant)
}

in  {
    FeatureVariable = FeatureVariable,
    SpecializedFHIRMapping = SpecializedFHIRMapping,
    ICEESAPIType = ICEESAPIType,
    Mapping = Mapping,
    NearestMapping = NearestMapping,
    no_mapping = None Mapping,
    geoid_mapping = \(g:GEOIDMapping) -> Some (Mapping.GEOIDMapping g),
    range = \ (minimum : Natural) -> \ (maximum : Natural) -> ICEESAPIType.Integer {
        maximum = Some (Natural/toInteger maximum),
        minimum = Some (Natural/toInteger minimum)
    },
    integer = ICEESAPIType.Integer {
        maximum = None Integer,
        minimum = None Integer
    },
    string = ICEESAPIType.String {
        enum = None (List Text)
    },
    enum = \(e : List Text) -> ICEESAPIType.String {
        enum = Some e
    },
    number = ICEESAPIType.Number,
    no_identifiers = [] : Identifiers,
    no_categories = [] : List Category,
    cut = BinningMethod.Cut,
    qcut = BinningMethod.QCut,
    range_bins = \ (rbs : RangeBins) -> BinningMethod.Bins (Bins.RangeBins rbs),
    no_binning = BinningMethod.NoBinning,
    replace = RenameAs.Replace,
    suffix = RenameAs.Suffix,
    no_rename = RenameAs.NoRename,
    environmental_mapping = \(e:EnvironmentalMapping) -> Some (Mapping.EnvironmentalMapping e),
    avg = Statistic.Avg,
    max = Statistic.Max,
    prev_date = Statistic.PrevDate,
    generic_fhir_mapping = \(g:GenericFHIRMapping) -> Some (Mapping.GenericFHIRMapping g),
    nearest_point_distance = \ (d : Distance) -> Some (Mapping.NearestPointMapping (NearestMapping.Distance d)),
    nearest_point_attribute = \ (d : FeatureAttribute) -> Some (Mapping.NearestPointMapping (NearestMapping.FeatureAttribute d)),
    nearest_feature_distance = \ (d : Distance) -> Some (Mapping.NearestFeatureMapping (NearestMapping.Distance d)),
    nearest_feature_attribute = \ (d : FeatureAttribute) -> Some (Mapping.NearestFeatureMapping (NearestMapping.FeatureAttribute d))
}
