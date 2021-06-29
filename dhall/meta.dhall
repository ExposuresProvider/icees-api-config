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
    system_is_regex: Optional Bool, -- system contains a regular expression
    code_is_regex: Optional Bool -- code contains a regular expression
}

let GenericFHIRMapping = List GenericeMatch 


let FHIRMappingVisit = List Text

let SpecializeFHIRMapping =
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

let RenameAs = < Suffix : Text | Replace : Text >

let StatisticVariant = { statistic : Statistic, rename : Optional RenameAs }

let EnvironmentalMapping =
      { dataset : Text, column : Text, statistics : List StatisticVariant }

let FeatureType = < String | Number | Integer >

let GEOIDMapping = { dataset : Text, column : Text, datatype : FeatureType }

let FeatureAttribute = { dataset : Text, name : Text, datatype : FeatureType }

let Distance = { dataset : Text, maximum : Optional Double }

let NearestPointMapping =
      < FeatureAttribute : FeatureAttribute | Distance : Distance >

let NearestFeatureMapping =
      < FeatureAttribute : FeatureAttribute | Distance : Distance >

let Mapping =
      < JqFHIRMapping : JqFHIRMapping
      | GenericFHIRMapping : GenericFHIRMapping
      | SpecializedFHIRMapping : SpecializedFHIRMapping
      | EnvironmentalMapping : EnvironmentalMapping
      | GEOIDMapping : GEOIDMapping
      | NearestPointMapping : NearestPointMapping
      | NearestFeatureMapping : NearestFeatureMapping
      >

let Category = Text

let TypeInteger = {
    minimum : Optional Integer,
    maximum : Optional Integer
}

let TypeString = {
    enum : Optional (List Text)
}

let ICEESAPIType = < String : TypeString | Integer : TypeInteger | Number >

let ICEESFeature =
      { feature_type : ICEESAPIType, categories : List Category }

let Identifiers = List Text

let RangeBins =
      { bins : List Double
      , right : Bool
      , include_lowest : Bool
      , labels : List Text
      }

let BinString = List Text

let Bins = < RangeBins : RangeBins | String : List (List Text) >

let BinningMethod = < Cut : Integer | QCut : Integer | Bins : Bins | NoBinning >

let BinningStrategy = { method : BinningMethod, suffix : Optional Text }

let TableColumn = { tableName : Text, rename : Optional RenameAs }

let FeatureVariable =
      { name : Text
      , mapping : Mapping
      , binning_strategies : Optional (List BinningStrategy)
      , feature : ICEESFeature
      , identifiers : Identifiers
      , tables : List TableColumn
      }

in  { FeatureVariable = FeatureVariable }
