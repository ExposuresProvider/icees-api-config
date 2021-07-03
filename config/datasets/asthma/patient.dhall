let meta = ../../../common/meta.dhall
let v = ../../package.dhall
let Table = meta.Table
let variable = meta.variable
let variant = meta.variant

in {
   name = "patient",
   variables = [
       variable v.AgeStudyStart,
       variable v.Sex,
       variable v.Race,
       variable v.Ethnicity,
       variable v.AsthmaDx,
       variable v.Prednisone,
       variant v.`AvgDailyPM2.5Exposure` "AvgDailyPM2.5Exposure_StudyAvg",
       variant v.`AvgDailyPM2.5Exposure` "AvgDailyPM2.5Exposure_StudyMax"
   ]
} : Table