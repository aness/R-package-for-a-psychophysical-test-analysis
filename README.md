# Psychophysical analysis R package
This package can only be used with R. It can be used to calculate a confusion matrix and to plot a response time boxplot. 

These results are useful when creating a BCI to check if your experimental onvironment is correctly set. http://www.tara.tsukuba.ac.jp/~maki/reprint/Tomek/shimizu15aearu35-36.pdf

Please refer also to this dataset containing a psychophysical test result sample. https://github.com/aness/visual-P300-based-BCI-psychophysical-analysis/blob/master/result.csv


## Installation

In R Studio you can install the latest version from Github

```s
install.packages("devtools")
library(devtools)
install_github("R-package-for-a-psychophysical-test-analysis") 
```
You can also use the Binary distribution in the Binary folder.

##Using this package

```s
library(P300PSYCHOPHYSICAL) 
data(result)
Analyseptcsv(result)
```
You can also export your psychophysical result in a CSV file. Using this instruction you will generate a dataset from your current csv file.  
```s
result <- read.csv(filename, header = TRUE, sep = ",")
Analyseptcsv("result")
```
The file format must follow this template  https://github.com/aness/visual-P300-based-BCI-psychophysical-analysis/blob/master/result.csv

## License

This package is free and open source software, licensed under GPL (>= 2).
