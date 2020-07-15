#############################################
####### Code for Online Database ############
########## By Gina 07.13.2020 ###############
#############################################

#Load Coverage Summary data frames into Global Environment
#**data frames available as GitHub files**
load("~/ISB/Figures/Results_Elevated_mastertable.RData")
load("~/ISB/Figures/Results_Enriched_mastertable.RData")

#Load Database Example data frames into Global Environment 
load("~/ISB/Figures/tissueElevatedgenestable_db.RData")
load("~/ISB/Figures/tissueEnrichedgenestable_db.RData")



############# Examples calling 'subset' function ############# 
### Examples most relevant to case studies

# EX: Percent coverage of chosen gene list
# ***FIGURE THIS OUT

# EX: Coverage of chosen tissue-specific gene(s)
# ***Can search for coverage of a gene list, like in CaseStudy1_POU3F2
# EX: Tissues for which gene(s) is/are elevated
subset(ElevatedTable_db, Elevated_Gene == 225 | Elevated_Gene == 54)

# EX: Percent coverage of genes for a chosen tissue
subset(Results_Elevated_db, Tissue == "Adipose", select=c(Percent_GO_BP))



### Additional examples

# EX: Tissue-specific genes covered by a chosen GSC
subset (ElevatedTable_db, GO_BP=="TRUE")

# EX: Tissue-specific genes covered by multiple chosen GSC's (e.g. Gene Ontology collections)
subset (ElevatedTable_db, GO_BP=="TRUE"&GO_MF=="TRUE"&GO_CC=="TRUE")

# EX: Coverage of genes by a chosen GSC and tissue
subset(ElevatedTable_db, Tissue == "Adipose", select=c(Tissue, Elevated_Gene, GO_BP))

# EX: List of genes for chosen tissue
subset (ElevatedTable_db,Tissue == "Adipose", select=c(Tissue, Elevated_Gene))

# EX: Number of Tissue-Specific genes for a chosen tissue
subset(Results_Elevated_db, Tissue == "Adipose", select=c(N_Elevated))



