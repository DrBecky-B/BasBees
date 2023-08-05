#First, set your directory to the directory where your datafile is located
setwd("//wurnet.nl/Homes/beekm024/My Documents/Students/220501-Bas Michels/data")

#Install and load the necessary packages (installation only necessary the first time. )
install.packages("ape")
install.packages("adegenet")
install.packages("pegas")
library("ape")
library("adegenet")
library("pegas")

#Read into the datafile. 
#What types of datafile work can be found here: https://cran.r-project.org/web/packages/pegas/vignettes/ReadingFiles.pdf
z <- read.loci("data.csv", loci.sep = ",", allele.sep = "/", col.loci = 3:14, col.pop = 2, row.names = 1)

#now lets look at the non-rarefied allelic richness. To get information about the function, you can type "?allelicrichness"
allelicrichness(z, pop = NULL, method = "raw", min.n = NULL)

#and now the rarefied allelic richness
allelicrichness(z, pop = NULL, method = "rarefaction", min.n = NULL)
