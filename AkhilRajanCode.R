female <-  read.csv("C:\\Users\\Raam Sambandam\\Downloads\\filteredDataFemale.csv")
male <-  read.csv("C:\\Users\\Raam Sambandam\\Downloads\\filteredDataMale.csv")
adnimerge <- read.csv("C:\\Users\\Raam Sambandam\\Downloads\\ADNIMERGE_26Jun2023.csv")

adnimerge <- adnimerge[adnimerge$COLPROT == "ADNI2",]


adnimerge <- subset(adnimerge, select = c(FLDSTRENG, DX_bl, DX, RID))

mergedFemale <- merge(female, adnimerge, by="RID", all.x = FALSE)
mergedMale <- merge(male, adnimerge, by="RID", all.x = FALSE)

mergedFemale <- mergedFemale[mergedFemale$FLDSTRENG == "3 Tesla MRI",]
mergedMale <- mergedMale[mergedMale$FLDSTRENG == "3 Tesla MRI",]

mergedFemaleCN <- mergedFemale[mergedFemale$DX == "CN",]
mergedMaleCN <- mergedMale[mergedMale$DX == "CN",]

write.csv(mergedFemaleCN, "C:\\Users\\Raam Sambandam\\Downloads\\mergedFemaleCN.csv", row.names=FALSE)
write.csv(mergedMaleCN, "C:\\Users\\Raam Sambandam\\Downloads\\mergedMaleCN.csv", row.names=FALSE)

mergedFemaleMCI <- mergedFemale[mergedFemale$DX == "MCI",]
mergedMaleMCI <- mergedMale[mergedMale$DX == "MCI",]

write.csv(mergedFemaleMCI, "C:\\Users\\Raam Sambandam\\Downloads\\mergedFemaleMCI.csv", row.names=FALSE)
write.csv(mergedMaleMCI, "C:\\Users\\Raam Sambandam\\Downloads\\mergedMaleMCI.csv", row.names=FALSE)

mergedFemaleD <- mergedFemale[mergedFemale$DX == "Dementia",]
mergedMaleD <- mergedMale[mergedMale$DX == "Dementia",]

write.csv(mergedFemaleD, "C:\\Users\\Raam Sambandam\\Downloads\\mergedFemaleD.csv", row.names=FALSE)
write.csv(mergedMaleD, "C:\\Users\\Raam Sambandam\\Downloads\\mergedMaleD.csv", row.names=FALSE)
