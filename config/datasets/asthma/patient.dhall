let v = ../../package.dhall

in [{
   name = "patient",
   variables = [
       v.AgeStudyStart,
       v.Sex,
       v.Race,
       v.Ethnicity,
       v.AsthmaDx,
       v.Prednisone,
       v.`AvgDailyPM2.5Exposure_StudyAvg`,
       v.`AvgDailyPM2.5Exposure_StudyMax`
   ]
}]