female <-  read.csv("C:/Users/srila/Documents/R-Programming-Folder/filteredDataFemale.csv")
male <-  read.csv("C:/Users/srila/Documents/R-Programming-Folder/filteredDataMale.csv")
adnimerge <- read.csv("C:/Users/srila/Documents/R-Programming-Folder/ADNIMERGE_26Jun2023.csv")

adnimerge <- adnimerge[adnimerge$COLPROT == "ADNI2",]

adnimerge <- subset(adnimerge, select = c(FLDSTRENG, DX_bl, DX, RID))

mergedFemale <- merge(female, adnimerge, by="RID", all.x = FALSE)
mergedMale <- merge(male, adnimerge, by="RID", all.x = FALSE)

mergedFemale <- mergedFemale[mergedFemale$FLDSTRENG == "3 Tesla MRI",]
mergedMale <- mergedMale[mergedMale$FLDSTRENG == "3 Tesla MRI",]

mergedFemaleCN <- mergedFemale[mergedFemale$DX == "CN",]
mergedMaleCN <- mergedMale[mergedMale$DX == "CN",]

mergedFemaleCN2 <- mergedFemaleCN %>% group_by(RID) %>% filter(n()>1)
mergedFemaleCN3 <- mergedFemaleCN %>% group_by(RID) %>% filter(n()>2)

mergedMaleCN2 <- mergedMaleCN %>% group_by(RID) %>% filter(n()>1)
mergedMaleCN3 <- mergedMaleCN %>% group_by(RID) %>% filter(n()>2)

write.csv(mergedFemaleCN2, "C:/Users/srila/Documents/R-Programming-Folder/mergedFemaleCN2.csv", row.names=FALSE)
write.csv(mergedFemaleCN3, "C:/Users/srila/Documents/R-Programming-Folder/mergedFemaleCN3.csv", row.names=FALSE)
write.csv(mergedMaleCN2, "C:/Users/srila/Documents/R-Programming-Folder/mergedMaleCN2.csv", row.names=FALSE)
write.csv(mergedMaleCN3, "C:/Users/srila/Documents/R-Programming-Folder/mergedMaleCN3.csv", row.names=FALSE)

mergedFemaleMCI <- mergedFemale[mergedFemale$DX == "MCI",]
mergedMaleMCI <- mergedMale[mergedMale$DX == "MCI",]

mergedFemaleMCI2 <- mergedFemaleMCI %>% group_by(RID) %>% filter(n()>1)
mergedFemaleMCI3 <- mergedFemaleMCI %>% group_by(RID) %>% filter(n()>2)

mergedMaleMCI2 <- mergedMaleMCI %>% group_by(RID) %>% filter(n()>1)
mergedMaleMCI3 <- mergedMaleMCI %>% group_by(RID) %>% filter(n()>2)

write.csv(mergedFemaleMCI2, "C:/Users/srila/Documents/R-Programming-Folder/mergedFemaleMCI2.csv", row.names=FALSE)
write.csv(mergedFemaleMCI3, "C:/Users/srila/Documents/R-Programming-Folder/mergedFemaleMCI3.csv", row.names=FALSE)
write.csv(mergedMaleMCI2, "C:/Users/srila/Documents/R-Programming-Folder/mergedMaleMCI2.csv", row.names=FALSE)
write.csv(mergedMaleMCI3, "C:/Users/srila/Documents/R-Programming-Folder/mergedMaleMCI3.csv", row.names=FALSE)

mergedFemaleD <- mergedFemale[mergedFemale$DX == "Dementia",]
mergedMaleD <- mergedMale[mergedMale$DX == "Dementia",]

mergedFemaleD2 <- mergedFemaleD %>% group_by(RID) %>% filter(n()>1)
mergedFemaleD3 <- mergedFemaleD %>% group_by(RID) %>% filter(n()>2)

mergedMaleD2 <- mergedMaleD %>% group_by(RID) %>% filter(n()>1)
mergedMaleD3 <- mergedMaleD %>% group_by(RID) %>% filter(n()>2)

write.csv(mergedFemaleD2, "C:/Users/srila/Documents/R-Programming-Folder/mergedFemaleD2.csv", row.names=FALSE)
write.csv(mergedFemaleD3, "C:/Users/srila/Documents/R-Programming-Folder/mergedFemaleD3.csv", row.names=FALSE)
write.csv(mergedMaleD2, "C:/Users/srila/Documents/R-Programming-Folder/mergedMaleD2.csv", row.names=FALSE)
write.csv(mergedMaleD3, "C:/Users/srila/Documents/R-Programming-Folder/mergedMaleD3.csv", row.names=FALSE)