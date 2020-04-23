---
title: "STAT253"
author: "Bilgehan Geçici"
date: "09/03/2020"
output:
  word_document: default
  html_document: default
---

```{r setup, include=FALSE}
library(readr)
library(ggplot2)
library(ggformula)
library(tidyverse)
library(lattice)

knitr::opts_chunk$set(echo = TRUE)
```
### PART 1

**Age = ** Quantative and discrete, because the age takes on numerical value and the age is also integer.

**Systolic Blood Pressure = ** Quantative and continuous, because the systolic blood pressure takes on numerical value and the systolic blood pressure could be decimal.

**Diastolic Blood Pressure = ** Quantative and continuous, because the diastolic blood pressure takes on numerical value and the diastolic blood pressure could be decimal.

The data are also multivariate, because we are observing more than two variables for every individual.

### PART 2

We determined that all variables were Quantative variables. So we can use relative frequency histogram, stem and leaf, histograms and dot plots to describe the dataset.


### PART 3


## Getting Data

First of I got the necessary data tables from given .cvs file. The data shown in like: **RawData, ** **Systolic_Men_Data, ****Diastolic_Women_Data, ****Diastolic_Men_Data, ****Diastolic_Women_Data.**


```{r}
RawData <- read.csv("BloodPressure_Data.csv")[, 1:4] 

Systolic_Men_Data = RawData[1:100,3]
Systolic_Women_Data = RawData[101:200,3]
Diastolic_Men_Data = RawData[1:100,4]
Diastolic_Women_Data = RawData[101:200,4]

```

 

## A.1) Calculating Sample of Systolic Blood Pressure's Mean

**The mean of the systolic blood pressure of the men's -->**
```{r Systolic_Men_Data, echo=FALSE}
Systolic_Men_Mean = mean(Systolic_Men_Data)
print(Systolic_Men_Mean)
```

**The mean of the systolic blood pressure of the women's -->**
```{r Systolic_Women_Data, echo=FALSE}
Systolic_Women_Mean = mean(Systolic_Women_Data)
print(Systolic_Women_Mean)
```

## A.2) Calculating Sample of Diastolic Blood Pressure's Mean

**The mean of the diastolic blood pressure of the men's -->**
```{r Diastolic_Men_Data, echo=FALSE}
Diastolic_Men_Mean = mean(Diastolic_Men_Data)
print(Diastolic_Men_Mean)
```

**The mean of the diastolic blood pressure of the women's -->**
```{r Diastolic_Women_Data, echo=FALSE}
Diastolic_Women_Mean = mean(Diastolic_Women_Data)
print(Diastolic_Women_Mean)
```


## B.1) Calculating Sample of Systolic Blood Pressure's Variance

**The variance of the systolic blood pressure of the men's -->**
```{r echo=FALSE}
Systolic_Men_Variance = var(Systolic_Men_Data)
print(Systolic_Men_Variance)
```

**The variance of the systolic blood pressure of the women's -->**
```{r echo=FALSE}
Systolic_Women_Variance = var(Systolic_Women_Data)
print(Systolic_Women_Variance)
```

## B.2) Calculating Sample of Diastolic Blood Pressure's Variance

**The variance of the diastolic blood pressure of the men's -->**
```{r echo=FALSE}
Diastolic_Men_Variance = var(Diastolic_Men_Data)
print(Diastolic_Men_Variance)
```

**The variance of the diastolic blood pressure of the women's -->**
```{r echo=FALSE}
Diastolic_Women_Variance = var(Diastolic_Women_Data)
print(Diastolic_Women_Variance)
```


## C.1) Calculating Sample of Systolic Blood Pressure's Standart Deviation

**The standart deviation of the systolic blood pressure of the men's -->**
```{r echo=FALSE}
Systolic_Men_Standart_Deviaton = sd(Systolic_Men_Data)
print(Systolic_Men_Standart_Deviaton)
```

**The standart deviation of the systolic blood pressure of the women's -->**
```{r echo=FALSE}
Systolic_Women_Standart_Deviaton = sd(Systolic_Women_Data)
print(Systolic_Women_Standart_Deviaton)
```

## C.2) Calculating Sample of Diastolic Blood Pressure's Standart Deviation

**The standart deviation of the diastolic blood pressure of the men's -->**
```{r echo=FALSE}
Diastolic_Men_Standart_Deviation = sd(Diastolic_Men_Data)
print(Diastolic_Men_Standart_Deviation)
```

**The standart deviation of the diastolic blood pressure of the women's -->**
```{r echo=FALSE}
Diastolic_Women_Standart_Deviation = sd(Diastolic_Women_Data)
print(Diastolic_Women_Standart_Deviation)
```


## D.1) Calculating Sample of Systolic Blood Pressure's Upper and Lower Quartiles

**The upper and lower quartiles of the systolic blood pressure of the men's -->**
```{r echo=FALSE}
Systolic_Men_Upper_Lower_Quartiles = quantile(Systolic_Men_Data)
print(Systolic_Men_Upper_Lower_Quartiles)
```

**The upper and lower quartiles of the systolic blood pressure of the women's -->**
```{r echo=FALSE}
Systolic_Women_Upper_Lower_Quartiles = quantile(Systolic_Women_Data)
print(Systolic_Women_Upper_Lower_Quartiles)
```

## D.2) Calculating Sample of Diastolic Blood Pressure's Upper and Lower Quartiles

**The upper and lower quartiles of the diastolic blood pressure of the men's -->**
```{r echo=FALSE}
Diastolic_Men_Upper_Lower_Quartiles = quantile(Diastolic_Men_Data)
print(Diastolic_Men_Upper_Lower_Quartiles)
```

**The upper and lower quartiles of the diastolic blood pressure of the women's -->**
```{r echo=FALSE}
Diastolic_Women_Upper_Lower_Quartiles = quantile(Diastolic_Women_Data)
print(Diastolic_Women_Upper_Lower_Quartiles)
```


## E.1) Calculating Sample of Systolic Blood Pressure's Minumum and Maxiumum Values

**The minumum value of the systolic blood pressure of the men's -->**
```{r echo=FALSE}
Systolic_Men_Min = min(Systolic_Men_Data)
print(Systolic_Men_Min)
```

**The maximum value of the systolic blood pressure of the men's -->**
```{r echo=FALSE}
Systolic_Men_Max = max(Systolic_Men_Data)
print(Systolic_Men_Max)
```

**The minumum value of the systolic blood pressure of the women's -->**
```{r echo=FALSE}
Systolic_Women_Min = min(Systolic_Women_Data)
print(Systolic_Women_Min)
```

**The maximum value of the systolic blood pressure of the women's -->**
```{r echo=FALSE}
Systolic_Women_Max = max(Systolic_Women_Data)
print(Systolic_Women_Max)
```

## E.2) Calculating Sample of Diastolic Blood Pressure's Minumum and Maxiumum Values

**The minumum value of the diastolic blood pressure of the women's -->**
```{r echo=FALSE}
Diastolic_Women_Min = min(Diastolic_Men_Data)
print(Diastolic_Women_Min)
```

**The maximum value of the diastolic blood pressure of the women's -->**
```{r echo=FALSE}
Diastolic_Women_Max = max(Diastolic_Women_Data)
print(Diastolic_Women_Max)
```

**The minumum value of the diastolic blood pressure of the men's -->**
```{r echo=FALSE}
Diastolic_Men_Min = min(Diastolic_Men_Data)
print(Diastolic_Men_Min)
```

**The maximum value of the diastolic blood pressure of the men's -->**
```{r echo=FALSE}
Diastolic_Men_Max = max(Diastolic_Men_Data)
print(Diastolic_Men_Max)
```


## F.1) Calculating Sample of Systolic Blood Pressure's Range

**The range of the systolic blood pressure of the men's -->**
```{r echo=FALSE}
Systolic_Men_Range = range(Systolic_Men_Data)
print(Systolic_Men_Range)
print(diff(Systolic_Men_Range))
```

**The range of the systolic blood pressure of the women's -->**
```{r echo=FALSE}
Systolic_Women_Range = range(Systolic_Women_Data)
print(Systolic_Women_Range)
print(diff(Systolic_Women_Range))
```

## F.2) Calculating Sample of Diastolic Blood Pressure's Range

**The range of the diastolic blood pressure of the men's -->**
```{r echo=FALSE}
Diastolic_Men_Range = range(Diastolic_Men_Data)
print(Diastolic_Men_Range)
print(diff(Diastolic_Men_Range))
```

**The range of the diastolic blood pressure of the women's -->**
```{r echo=FALSE}
Diastolic_Women_Range = range(Diastolic_Women_Data)
print(Diastolic_Women_Range)
print(diff(Diastolic_Women_Range))
```


## G.1) Comparing Sample of Systolic Blood Pressure's Range and Standart Deviation

**The range of the systolic blood pressure of the men's is approximately  how many standard deviations?**
**It is approximately-->**
```{r echo=FALSE}
Systolic_Men_Compare = diff(Systolic_Men_Range) / Systolic_Men_Standart_Deviaton
print(Systolic_Men_Compare)
``` 

**The range of the systolic blood pressure of the women's is approximately how many standard deviations?**
**It is approximately-->**
```{r echo=FALSE}
Systolic_Women_Compare = diff(Systolic_Women_Range) / Systolic_Women_Standart_Deviaton
print(Systolic_Women_Compare)
``` 


## G.2) Comparing Sample of Diastolic Blood Pressure's Range and Standart Deviation

**The range of the diastolic blood pressure of the men's is approximately  how many standard deviations?**
**It is approximately-->**
```{r echo=FALSE}
Diastolic_Men_Compare = diff(Diastolic_Men_Range) / Diastolic_Men_Standart_Deviation
print(Diastolic_Men_Compare)
``` 

**The range of the systolic blood pressure of the women's is approximately how many standard deviations?**
**It is approximately-->**
```{r echo=FALSE}
Diastolic_Women_Compare = diff(Diastolic_Women_Range) / Diastolic_Women_Standart_Deviation
print(Diastolic_Women_Compare)
``` 


## H.1) Calculating Sample of Systolic Blood Pressure's Median

**The median of the systolic blood pressure of the men's -->**
```{r echo=FALSE}
Systolic_Men_Median = median(Systolic_Men_Data)
print(Systolic_Men_Median)
```

**The median of the systolic blood pressure of the women's -->**
```{r echo=FALSE}
Systolic_Women_Median = median(Systolic_Women_Data)
print(Systolic_Women_Median)
```

## H.2) Calculating Sample of Diastolic Blood Pressure's Median

**The median of the diastolic blood pressure of the men's -->**
```{r echo=FALSE}
Diastolic_Men_Median = median(Diastolic_Men_Data)
print(Diastolic_Men_Median)
```

**The median of the diastolic blood pressure of the women's -->**
```{r echo=FALSE}
Diastolic_Women_Median = median(Diastolic_Women_Data)
print(Diastolic_Women_Median)
```


## I.1) Calculating Sample of Systolic Blood Pressure's IQR

**The IQR value of the systolic blood pressure of the men's -->**
```{r echo=FALSE}
Systolic_Men_IQR = IQR(Systolic_Men_Data)
print(Systolic_Men_IQR)
```

**The IQR value of the systolic blood pressure of the women's -->**
```{r echo=FALSE}
Systolic_Women_IQR = IQR(Systolic_Women_Data)
print(Systolic_Women_IQR)
```

## I.2) Calculating Sample of Diastolic Blood Pressure's IQR

**The IQR value of the diastolic blood pressure of the men's -->**
```{r echo=FALSE}
Diastolic_Men_IQR = IQR(Diastolic_Men_Data)
print(Diastolic_Men_IQR)
```

**The IQR value of the diastolic blood pressure of the women's -->**
```{r echo=FALSE}
Diastolic_Women_IQR = IQR(Diastolic_Women_Data)
print(Diastolic_Women_IQR)
```


## J.1) Calculating Sample of Systolic Blood Pressure's Five Number Summaries

**The five number summaries of the systolic blood pressure of the men's -->**
```{r echo=FALSE}
Systolic_Men_Summary = summary(Systolic_Men_Data)
print(Systolic_Men_Summary)
```

**The five number summaries of the systolic blood pressure of the women's -->**
```{r echo=FALSE}
Systolic_Women_Summary = summary(Systolic_Women_Data)
print(Systolic_Women_Summary)
```

## J.2) Calculating Sample of Diastolic Blood Pressure's IQR

**The five number summaries of the diastolic blood pressure of the men's -->**
```{r echo=FALSE}
Diastolic_Men_Summary = summary(Diastolic_Men_Data)
print(Diastolic_Men_Summary)
```

**The five number summaries of the diastolic blood pressure of the women's -->**
```{r echo=FALSE}
Diastolic_Women_Summary = summary(Diastolic_Women_Data)
print(Diastolic_Women_Summary)
```


## K.1) Sample of Systolic Blood Pressure's Box Plot

**The box plot of the systolic blood pressure of the men's -->**
```{r echo=FALSE, results = 'hide'}
Systolic_Men_Box_Plot = boxplot(Systolic_Men_Data)
print(Systolic_Men_Box_Plot)
print("\n")
```

We can see that the systolic blood pressure of the men's box plot has symmetric distribution. There are two outlayers with values of -999 and 170.


**The box plot of the systolic blood pressure of the women's -->**
```{r echo=FALSE,results= 'hide'}
Systolic_Women_Box_Plot = boxplot(Systolic_Women_Data)
print(Systolic_Women_Box_Plot)
print("\n")
```

We can see that the systolic blood pressure of the women's box plot has negative skew distribution (Skewed Left). There is one outlayer with value of 158.

## K.2) Sample of Diastolic Blood Pressure's Box Plot

**The box plot of the diastolic blood pressure of the men's -->**
```{r echo=FALSE, results='hide'}
Diastolic_Men_Box_Plot = boxplot(Diastolic_Men_Data)
print(Diastolic_Men_Box_Plot)
print("\n")
```

We can see that the diastolic blood pressure of the men's box plot has positive skew distribution (Skewed Right). There are four outlayers and all of the values are 100.


**The box plot of the diastolic blood pressure of the women's -->**
```{r echo=FALSE, results= 'hide'}
Diastolic_Women_Box_Plot = boxplot(Diastolic_Women_Data)
print(Diastolic_Women_Box_Plot)
print("\n")
```

We can see that the diastolic blood pressure of the women's box plot has positive skew distribution (Skewed Right). There are two outlayers and all of the values are 90.


## L.1) Sample of Systolic Blood Pressure's Stem and Leaf Plot

**The stem and leaf plot of the systolic blood pressure of the men's -->**
```{r, echo=FALSE}
Systolic_Men_Stem = stem(Systolic_Men_Data)
print(Systolic_Men_Stem)
```

**The stem and leaf plot of the systolic blood pressure of the women's -->**
```{r, echo=FALSE}
Systolic_Women_Stem = stem(Systolic_Women_Data)
print(Systolic_Women_Stem)
```

## L.2) Sample of Diastolic Blood Pressure's Stem and Leaf Plot

**The stem and leaf plot of the diastolic blood pressure of the men's -->**
```{r, echo = FALSE}
Diastolic_Men_Stem = stem(Diastolic_Men_Data)
print(Diastolic_Men_Stem)
```

**The stem and leaf plot of the diastolic blood pressure of the women's -->**
```{r, echo=FALSE}
Diastolic_Women_Stem = stem(Diastolic_Women_Data)
print(Diastolic_Women_Stem)
```


## M.1.1) Sample of Systolic Blood Pressure's Histogram

**The histogram of the systolic blood pressure of the men's(with 5 subintervals) -->**
```{r, echo=FALSE, results= 'hide'}
Systolic_Men_Histogram = hist(Systolic_Men_Data, breaks = seq(min(Systolic_Men_Data), max(Systolic_Men_Data), length.out = 6))
print(Systolic_Men_Histogram)
```

**The histogram of the systolic blood pressure of the women's(with 5 subintervals) -->**
```{r, echo=FALSE, results = 'hide'}
Systolic_Women_Histogram = hist(Systolic_Women_Data, breaks = seq(min(Systolic_Women_Data), max(Systolic_Women_Data), length.out = 6))
print(Systolic_Women_Histogram)
```

## M.2.1) Sample of Diastolic Blood Pressure's Histogram

**The histogram of the diastolic blood pressure of the men's(with 5 subintervals)-->**
```{r, echo=FALSE, results='hide'}
Diastolic_Men_Histogram = hist(Diastolic_Men_Data, breaks = seq(min(Diastolic_Men_Data), max(Diastolic_Men_Data), length.out = 6))
print(Diastolic_Men_Histogram)
```

**The histogram of the diastolic blood pressure of the women's(with 5 subintervals)-->**
```{r, echo=FALSE,  results='hide'}
Diastolic_Women_Histogram = hist(Diastolic_Women_Data, breaks = seq(min(Diastolic_Women_Data), max(Diastolic_Women_Data), length.out = 6))
print(Diastolic_Women_Histogram)
```


## M.1.2) Sample of Systolic Blood Pressure's Histogram (Cont.)

**The histogram of the systolic blood pressure of the men's(with 10 subintervals)-->**
```{r, echo=FALSE,results='hide'}
Systolic_Men_Histogram = hist(Systolic_Men_Data, breaks = seq(min(Systolic_Men_Data), max(Systolic_Men_Data), length.out = 11))
print(Systolic_Men_Histogram)
```

**The histogram of the systolic blood pressure of the women's(with 10 subintervals)-->**
```{r, echo=FALSE, results='hide'}
Systolic_Women_Histogram = hist(Systolic_Women_Data, breaks = seq(min(Systolic_Women_Data), max(Systolic_Women_Data), length.out = 11))
print(Systolic_Women_Histogram)
```

## M.2.2) Sample of Diastolic Blood Pressure's Histogram (Cont.)

**The histogram of the diastolic blood pressure of the men's(with 10 subintervals)-->**
```{r, echo=FALSE, results='hide'}
Diastolic_Men_Histogram = hist(Diastolic_Men_Data, breaks = seq(min(Diastolic_Men_Data), max(Diastolic_Men_Data), length.out = 11))
print(Diastolic_Men_Histogram)
```

**The histogram of the diastolic blood pressure of the women's(with 10 subintervals)-->**
```{r, echo=FALSE, results='hide'}
Diastolic_Women_Histogram = hist(Diastolic_Women_Data, breaks = seq(min(Diastolic_Women_Data), max(Diastolic_Women_Data), length.out = 11))
print(Diastolic_Women_Histogram)
```

## Conclude of the all histograms.
We can see that if we have more subintervals, we can reach more detailed information from given dataset. It also helps us to understand better how histogram's shape look like. It’s better to choose the histograms which have more subintervals.


## N.1) Sample of Systolic Blood Pressure's Dot Plot

**The dot plot of the systolic blood pressure of the men's --> **
```{r, echo=FALSE, results='hide'}
Systolic_Men_Dot_Plot = stripchart(Systolic_Men_Data, method = "stack", cex = 3,frame.plot = F, at=c(0.00),pch = 20,las = 1,xlim = c(-1000,200))
print(Systolic_Men_Dot_Plot)
```

The figure, above the graph is not mount shaped.


**The dot plot of the systolic blood pressure of the women's -->**
```{r, echo=FALSE, results='hide'}
Systolic_Women_Dot_Plot = stripchart(Systolic_Women_Data, method = "stack", cex = 3,frame.plot = F, at=c(0.00),pch = 20,las = 1,xlim = c(80, 160))
print(Systolic_Women_Dot_Plot)
```

The figure, above the graph is not mount shaped.

## N.2) Sample of Diastolic Blood Pressure's Dot Plot

**The dot plot of the diastolic blood pressure of the men's -->**
```{r, echo=FALSE, results='hide'}
Diastolic_Men_Dot_Plot = stripchart(Diastolic_Men_Data, method = "stack", cex = 3,frame.plot = F, at=c(0.00),pch = 20,las = 1,xlim = c(40,110))
print(Diastolic_Men_Dot_Plot)
```

The figure, above the graph is not mount shaped.

**The dot plot of the diastolic blood pressure of the women's -->**
```{r, echo=FALSE, results='hide'}
Diastolic_Women_Dot_Plot = stripchart(Diastolic_Women_Data, method = "stack", cex = 3,frame.plot = F, at=c(0.00),pch = 20,las = 1, xlim = c(50,100))
print(Diastolic_Women_Dot_Plot)
```

The figure, above the graph is not mount shaped.


## O.1) Decision on Using Tchebysheff’s Theorem on Sample of Systolic Blood Pressure Data

# For Systolic_Men_Data:
We can not use Tchebysheff’s Theorem. Because It's shape is neither mound-shaped or skewed.

# For Systolic_Women_Data:
We can use Tchebysheff’s Theorem. Because It has a skewed-right shape.

## O.2) Decision on Using Tchebysheff’s Theorem on Sample of Diastolic Blood Pressure Data

# For Diastolic_Men_Data:
We can use Tchebysheff’s Theorem. Because It's shape is like skewed-right.

# For Diastolic_Women_Data:
We can use Tchebysheff’s Theorem. Because It is slightly mound-shaped.


## P.1) Decision on Using Empirical Theorem on Sample of Systolic Blood Pressure Data

# For Systolic_Men_Data:
We can not use Empirical Theorem. Because It's shape is not mound-shaped.

# For Systolic_Women_Data:
We can not use Empirical Theorem. Because It's shape is not mound-shaped.

## P.2) Decision on Using Empirical Theorem on Sample of Diastolic Blood Pressure Data

# For Diastolic_Men_Data:
We can not use Empirical Theorem. Because It's shape is not mound-shaped.

# For Diastolic_Women_Data:
We can not use Empirical Theorem. Because It is shape is not mound-shaped.


## Q) Comparing Systolic Blood Pressure and Diastolic Blood Pressure with Comparative Dot Plot

**Comparing systolic blood pressure of men's and diastolic blood pressure of men's**
```{r, echo=FALSE, results='hide'}
par(mfrow = c(1,1))
stripchart(Systolic_Men_Data, method = "stack", cex = 3,frame.plot = T, at=c(0.00),pch = 20,las = 1,xlim = c(-1000,200),xlab = "Systolic_Men_Dot_Plot")
stripchart(Diastolic_Men_Data, method = "stack", cex = 3,frame.plot = T, at=c(0.00),pch = 20,las = 1,xlim = c(40,110),xlab = "Diastolic_Men_Dot_Plot")
```

**Comparing systolic blood press. of women's and diastolic blood pressure of women's**
```{r, echo=FALSE, results='hide'}
par(mfrow = c(1,1))
stripchart(Systolic_Women_Data, method = "stack", cex = 3,frame.plot = T, at=c(0.00),pch = 20,las = 1,xlim = c(80, 160), xlab = 'Systolic_Women_Dot_Plot')
stripchart(Diastolic_Women_Data, method = "stack", cex = 3,frame.plot = T, at=c(0.00),pch = 20,las = 1, xlim = c(50,100),xlab = "Diastolic_Women_Dot_Plot")

```


## R.1) Sample of Systolic Blood Pressure's Relative Frequency Histogram

**The relative frequency histogram of the systolic blood pressure of the men's --> **
```{r, echo=FALSE, results='hide'}
Systolic_Men_Relative_Histogram = histogram(Systolic_Men_Data, col = "blue")
print(Systolic_Men_Relative_Histogram)
```

The figure, above the graph is not mount shaped.


**The relative frequency histogram of the systolic blood pressure of the women's -->**
```{r, echo=FALSE, results='hide'}
Systolic_Women_Relative_Histogram = histogram(Systolic_Women_Data, col = "red")
print(Systolic_Women_Relative_Histogram)
```

The figure, above the graph is skewed-right.

## R.2) Sample of Diastolic Blood Pressure's Relative Frequency Histogram

**The relative frequency histogram of the diastolic blood pressure of the men's -->**
```{r, echo=FALSE, results='hide'}
Diastolic_Men_Relative_Histogram = histogram(Diastolic_Men_Data, col = "green")
print(Diastolic_Men_Relative_Histogram)
```

The figure, above the graph is slighty mount shaped.

**The relative frequency histogram of the diastolic blood pressure of the women's -->**
```{r, echo=FALSE, results='hide'}
Diastolic_Women_Relative_Histogram = histogram(Diastolic_Women_Data, col = "brown")
print(Diastolic_Women_Relative_Histogram)
```

The figure, above the graph is slightly mount shaped.


## S.1) Sample of Systolic Blood Pressure's Z-Score 

**The z-score of the systolic blood pressure of the men's --> **
```{r, echo=FALSE}
Systolic_Men_Z_Score = (Systolic_Men_Data - Systolic_Men_Mean) / Systolic_Men_Standart_Deviaton
summary(Systolic_Men_Z_Score)
```
Any z-score greater than 3 or less than -3 is considered to be an outlier. This rule of thumb is based on the empirical rule. For minimum z-score of the systolic blood pressure of men is -9.8058. So we can consider as an outliyer.


**The z-score of histogram of the systolic blood pressure of the women's -->**
```{r, echo=FALSE}
Systolic_Women_Z_Score = (Systolic_Women_Data - Systolic_Women_Mean) / Systolic_Women_Standart_Deviaton
summary(Systolic_Women_Z_Score)
```
Any z-score greater than 3 or less than -3 is considered to be an outlier. This rule of thumb is based on the empirical rule. For maximum z-score of the systolic blood pressure of women is 4.26220. So we can consider as an outliyer.


## S.2) Sample of Diastolic Blood Pressure's Z-Score

**The z-score of the diastolic blood pressure of the men's -->**
```{r, echo=FALSE}
Diastolic_Men_Z_Score = (Diastolic_Men_Data - Diastolic_Men_Mean) / Diastolic_Men_Standart_Deviation
summary(Diastolic_Men_Z_Score)
```
Any z-score greater than 3 or less than -3 is considered to be an outlier. This rule of thumb is based on the empirical rule. We cannot consider z-scores as an outliyer for diastolic blood pressure of the men's. 


**The z-score of the diastolic blood pressure of the women's -->**
```{r, echo=FALSE}
Diastolic_women_Z_Score = (Diastolic_Women_Data - Diastolic_Women_Mean) / Diastolic_Women_Standart_Deviation
summary(Diastolic_women_Z_Score)
```
Any z-score greater than 3 or less than -3 is considered to be an outlier. This rule of thumb is based on the empirical rule. We cannot consider z-scores as an outliyer for diastolic blood pressure of the women's

































