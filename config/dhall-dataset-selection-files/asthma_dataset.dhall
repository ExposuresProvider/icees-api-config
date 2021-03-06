let v = ./package.dhall
let variables = [
    v.Ethnicity,
    v.Race,
    v.Sex,
    v.Sex2,
    v.ur,
    v.`IL-6`,
    v.BMI,
    v.FEV1FVC_flag_first,
    v.FEV1FVC_fraction_first,
    v.FEV1FVC_flag_last,
    v.FEV1FVC_fraction_last,
    v.FEV1_value_first,
    v.FEV1_value_last,
    v.FVC_value_first,
    v.FVC_value_last,
    v.HCT_flag_first,
    v.HCT_value_first,
    v.HCT_flag_last,
    v.HCT_value_last,
    v.PLT_flag_first,
    v.PLT_value_first,
    v.PLT_flag_last,
    v.PLT_value_last,
    v.VisitType,
    v.WBCcount_flag_first,
    v.WBCcount_value_first,
    v.WBCcount_flag_last,
    v.WBCcount_value_last,
    v.AbsoluteLymphocyteCount,
    v.Albumin,
    v.RoadwayType,
    v.RoadwayAADT,
    v.RoadwaySpeedLimit,
    v.RoadwayLanes,
    v.AbsoluteLymphocyteCount_flag_first,
    v.AbsoluteLymphocyteCount_flag_last,
    v.AbsoluteNeutrophilCount_flag_first,
    v.AbsoluteNeutrophilCount_flag_last,
    v.Active_In_Year,
    v.AgeInteger,
    v.Albumin_flag_first,
    v.Albumin_flag_last,
    v.BMI_CATEGORY,
    v.BMI_Category,
    v.D28B_STILL_HAVE_ASTHMA,
    v.D28C_ASTHMA_EPISODE_12M,
    v.D28D_ASTHMA_ER_VISIT_12M,
    v.D28E_ASTHMA_MED_TAKE_12M,
    v.D28F_ASTHMA_14D_NUM_NIGHTS_TEXT,
    v.D28G_ASTHMA_14D_LIMIT_DAYS_TEXT,
    v.D28H_ASTHMA_14D_NUM_WHEEZE_TEXT,
    v.D28_ASTHMA,
    v.ETHNICITY,
    v.GENDER,
    v.`IL-6_flag_first`,
    v.`IL-6_flag_last`,
    v.IN_FINAL_SAMPLE,
    v.O3_N_OBS,
    v.ORIGINAL_ANALYTIC_SAMPLE,
    v.PM25_N_OBS,
    v.RACE,
    v.RESPONDER_STATUS,
    v.ROADTYPE,
    v.S177_SMOKE_100_CIG_LIFETIME,
    v.SMOKE_CAT,
    v.SNP1,
    v.SNP2,
    v.SNP3,
    v.SNP4,
    v.SPEED,
    v.SpO2FiO2ratio,
    v.BaseDeficit,
    v.Lactate,
    v.SvO2,
    v.SpO2FiO2ratio_flag_first,
    v.SpO2FiO2ratio_flag_last,
    v.SvO2_flag_first,
    v.SvO2_flag_last,
    v.THROUGH_LANES,
    v.Troponin_flag_first,
    v.Troponin_flag_last,
    v.pCO2ArterialVenous_flag_first,
    v.pCO2ArterialVenous_flag_last,
    v.pCO2Arterial_flag_first,
    v.pCO2Arterial_flag_last,
    v.pO2Arterial_flag_first,
    v.pO2Arterial_flag_last,
    v.pO2FiO2ratio_flag_first,
    v.pO2FiO2ratio_flag_last,
    v.AgeStudyStart,
    v.AgeStudyStart2,
    v.Albuterol,
    v.AlcoholDependenceDx,
    v.AlopeciaDx,
    v.Amiodarone_gttRx,
    v.AnakinraRx,
    v.Androstenedione,
    v.Antibiotics,
    v.AnxietyDx,
    v.Arformoterol,
    v.AsthmaDx,
    v.AutismDx,
    v.Avg24hAcetaldehydeExposure_2,
    v.Avg24hAcetaldehydeExposure_2_qcut,
    v.AvgDailyAcetaldehydeExposure_2,
    v.AvgDailyAcetaldehydeExposure_2_qcut,
    v.AvgDailyBenzeneExposure_2,
    v.AvgDailyBenzeneExposure_2_qcut,
    v.AvgDailyCOExposure_2,
    v.AvgDailyCOExposure_2_qcut,
    v.AvgDailyFormaldehydeExposure_2,
    v.AvgDailyFormaldehydeExposure_2_qcut,
    v.AvgDailyNO2Exposure_2,
    v.AvgDailyNO2Exposure_2_qcut,
    v.AvgDailyNOExposure_2,
    v.AvgDailyNOExposure_2_qcut,
    v.AvgDailyNOxExposure_2,
    v.AvgDailyNOxExposure_2_qcut,
    v.AvgDailyOzoneExposure,
    v.AvgDailyOzoneExposure_qcut,
    v.AvgDailyOzoneExposure_StudyAvg,
    v.AvgDailyOzoneExposure_StudyAvg_qcut,
    v.AvgDailyOzoneExposure_StudyMax,
    v.AvgDailyOzoneExposure_StudyMax_qcut,
    v.`AvgDailyPM2.5Exposure`,
    v.`AvgDailyPM2.5Exposure_qcut`,
    v.`AvgDailyPM2.5Exposure_2`,
    v.`AvgDailyPM2.5Exposure_2_qcut`,
    v.`AvgDailyPM2.5Exposure_StudyAvg`,
    v.`AvgDailyPM2.5Exposure_StudyAvg_qcut`,
    v.`AvgDailyPM2.5Exposure_StudyMax`,
    v.`AvgDailyPM2.5Exposure_StudyMax_qcut`,
    v.AvgDailySO2Exposure_2,
    v.AvgDailySO2Exposure_2_qcut,
    v.Beclomethasone,
    v.BronchiectasisDx,
    v.Budesonide,
    v.CAFO_Exposure,
    v.CRRT_HD,
    v.CURRENT_AGE,
    v.CURRENT_AGE2,
    v.CancerDx,
    v.CervicalCancerDx,
    v.Cetirizine,
    v.ChronicKidneyDiseaseDx,
    v.ChronicNasalCongestionDx,
    v.ChronicObstructivePulmonaryDiseaseDx,
    v.Ciclesonide,
    v.Citalopram,
    v.ConvalescentPlasma,
    v.CoughDx,
    v.CroupDx,
    v.CysticFibrosisDx,
    v.D28A_ASTHMA_AD_TEXT,
    v.D28A_ASTHMA_AD_TEXT2,
    v.DISTANCE,
    v.DISTANCE_qcut,
    v.DISTANCE2,
    v.DISTANCE2_qcut,
    v.DailyWetCoughDx,
    v.DepressionDx,
    v.DexamethasoneRx,
    v.DiabetesDx,
    v.Diphenhydramine,
    v.Dobutamine_gttRx,
    v.Dopamine_gttRx,
    v.DrugDependenceDx,
    v.Duloxetine,
    v.ECLS,
    v.ESTPROPHOUSEHOLDSNOAUTO_cut,
    v.ESTPROPHOUSEHOLDSNOAUTO_qcut,
    v.ESTPROPPERSONS25PLUSHSMAX_cut,
    v.ESTPROPPERSONS25PLUSHSMAX_qcut,
    v.ESTPROPPERSONS5PLUSNOENGLISH_cut,
    v.ESTPROPPERSONS5PLUSNOENGLISH_qcut,
    v.ESTPROPPERSONSNOHEALTHINS_cut,
    v.ESTPROPPERSONSNOHEALTHINS_qcut,
    v.ESTPROPPERSONSNONHISPWHITE_cut,
    v.ESTPROPPERSONSNONHISPWHITE_qcut,
    v.ESTTOTALPOP,
    v.ESTTOTALPOP_qcut,
    v.ESTTOTALPOP25PLUS_cut,
    v.ESTTOTALPOP25PLUS_qcut,
    v.EndometriosisDx,
    v.Epinephrine_gttRx,
    v.Escitalopram,
    v.Esmolol_gtt,
    v.EstHouseholdIncome,
    v.EstHouseholdIncome_qcut,
    v.EstProbabilityESL,
    v.EstProbabilityESL_qcut,
    v.EstProbabilityHighSchoolMaxEducation,
    v.EstProbabilityHighSchoolMaxEducation_qcut,
    v.EstProbabilityHouseholdNonHispWhite,
    v.EstProbabilityHouseholdNonHispWhite_qcut,
    v.EstProbabilityNoAuto,
    v.EstProbabilityNoAuto_qcut,
    v.EstProbabilityNoHealthIns,
    v.EstProbabilityNoHealthIns_qcut,
    v.EstProbabilityNonHispWhite,
    v.EstProbabilityNonHispWhite_qcut,
    v.EstResidentialDensity,
    v.EstResidentialDensity_qcut,
    v.EstResidentialDensity25Plus,
    v.EstResidentialDensity25Plus_qcut,
    v.Estradiol,
    v.Estrogen,
    v.Estropipate,
    v.Fexofenadine,
    v.FibromyalgiaDx,
    v.Flunisolide,
    v.Fluoxetine,
    v.Fluticasone,
    v.Formoterol,
    v.Goserelin,
    v.HighFlowNasalCannula,
    v.Histrelin,
    v.Hydroxyzine,
    v.HypertensionDx,
    v.IN_EPR,
    v.IN_ICEES,
    v.ImatinibRx,
    v.Indacaterol,
    v.Ipratropium,
    v.Landfill_Exposure,
    v.LateralityDefect_SitusInversusOrHeterotaxyDx,
    v.Leuprolide,
    v.MEDIANHOUSEHOLDINCOME_cut,
    v.MEDIANHOUSEHOLDINCOME_qcut,
    v.MajorRoadwayHighwayExposure,
    v.MajorRoadwayHighwayExposure2,
    v.MaxDailyOzoneExposure,
    v.MaxDailyOzoneExposure_qcut,
    v.MaxDailyOzoneExposure_2,
    v.MaxDailyOzoneExposure_2_qcut,
    v.MaxDailyOzoneExposure_StudyAvg,
    v.MaxDailyOzoneExposure_StudyAvg_qcut,
    v.MaxDailyOzoneExposure_StudyMax,
    v.MaxDailyOzoneExposure_StudyMax_qcut,
    v.`MaxDailyPM2.5Exposure`,
    v.`MaxDailyPM2.5Exposure_qcut`,
    v.`MaxDailyPM2.5Exposure_StudyAvg`,
    v.`MaxDailyPM2.5Exposure_StudyAvg_qcut`,
    v.`MaxDailyPM2.5Exposure_StudyMax`,
    v.`MaxDailyPM2.5Exposure_StudyMax_qcut`,
    v.Medroxyprogresterone,
    v.MenopauseDx,
    v.Mepolizumab,
    v.Metaproterenol,
    v.Metformin,
    v.MiddleEarDiseaseDx,
    v.Mometasone,
    v.Nandrolone,
    v.NeonatalRespiratoryDistressDx,
    v.O3_ANNUAL_AVERAGE_cut,
    v.O3_ANNUAL_AVERAGE_qcut,
    v.ObesityBMI,
    v.ObesityDx,
    v.Omalizumab,
    v.OvarianCancerDx,
    v.OvarianDysfunctionDx,
    v.PCDDx,
    v.PM25_ANNUAL_AVERAGE_cut,
    v.PM25_ANNUAL_AVERAGE_qcut,
    v.Paroxetine,
    v.PneumoniaDx,
    v.Prasterone,
    v.Prednisone,
    v.PrednisoneOrMethylprednisoneRx,
    v.PregnancyDx,
    v.Progesterone,
    v.Propranolol,
    v.ProstateCancerDx,
    v.QXAGE,
    v.QXAGE2,
    v.ReactiveAirwayDx,
    v.RespiratorySupportSupplementalO2,
    v.RoadwayDistanceExposure,
    v.RoadwayDistanceExposure2,
    v.Salmeterol,
    v.Sertraline,
    v.SmokingStatus,
    v.TLR4_AGE,
    v.TLR4_AGE2,
    v.TLR4_DIST_1X_cut,
    v.TLR4_DIST_1X_qcut,
    v.TLR4_DIST_2X_cut,
    v.TLR4_DIST_2X_qcut,
    v.TLR4_DIST_3X_cut,
    v.TLR4_DIST_3X_qcut,
    v.Tamoxifen,
    v.TesticularCancerDx,
    v.TesticularDysfunctionDx,
    v.Testosterone,
    v.Theophylline,
    v.TocilizumabRx,
    v.TotalEDInpatientVisits,
    v.TotalEDVisits,
    v.TotalInpatientVisits,
    v.Trazodone,
    v.Triptorelin,
    v.UterineCancerDx,
    v.Venlafaxine,
    v.Age,
    v.AgeVisit2,
    v.AntiInfectivesAntibiotics,
    v.Avg24hBenzeneExposure_2,
    v.Avg24hBenzeneExposure_2_qcut,
    v.Avg24hCOExposure_2,
    v.Avg24hCOExposure_2_qcut,
    v.Avg24hFormaldehydeExposure_2,
    v.Avg24hFormaldehydeExposure_2_qcut,
    v.Avg24hNO2Exposure_2,
    v.Avg24hNO2Exposure_2_qcut,
    v.Avg24hNOExposure_2,
    v.Avg24hNOExposure_2_qcut,
    v.Avg24hNOxExposure_2,
    v.Avg24hNOxExposure_2_qcut,
    v.Avg24hOzoneExposure,
    v.Avg24hOzoneExposure_qcut,
    v.`Avg24hPM2.5Exposure`,
    v.`Avg24hPM2.5Exposure_qcut`,
    v.`Avg24hPM2.5Exposure_2`,
    v.`Avg24hPM2.5Exposure_2_qcut`,
    v.Avg24hSO2Exposure_2,
    v.Avg24hSO2Exposure_2_qcut,
    v.CodeBlue,
    v.Max24hOzoneExposure,
    v.Max24hOzoneExposure_qcut,
    v.Max24hOzoneExposure_2,
    v.Max24hOzoneExposure_2_qcut,
    v.`Max24hPM2.5Exposure`,
    v.`Max24hPM2.5Exposure_qcut`
]
in [
    {
        name = "patient",
        variables = variables
    },
    {
        name = "visit",
        variables = variables
    }
]
