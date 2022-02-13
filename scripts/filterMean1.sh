#!bin/bash
#Goal is to filter all instances with Mean of 1 or higher
#Go through  completeGenomeFile and add all with Mean > 1 to outputfile

awk '{if ($3 >= 1.0){print}}' /c/Users/alex/Desktop/denbiData/LDhelmet/ldhelmetcompleteGenome/LDHelmetoutputcompleteGenome.txt > filteredMean.txt






