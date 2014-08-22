---
title       : Calculate Your Body Mass Index
subtitle    : BMI
author      : Sarah Alofaysan
job         : Developing Data Product Project
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## What is a Body Mass Index

The Body Mass Index (BMI) is a measurement tool that compares your height to your weight and gives you an indication of whether you are Overweight, Underweight or at a Healthy Weight for your height.

--- .class #id 

## Why You Need to Know Your BMI ?

* to know how much weigth you need to lose.
* to avoid health risks such as Diabetes and Cardiovascular Diseases.
* to live longer and healthier.

--- .class #id 
## How to Calculate Your BMI

You can calculate your BMI by dividing your weight in pounds by the squre of your heigth in inches then multiply it by 703.

Lets assume that you are a 70 inches tall and you weigh 160 pounds. Then, your BMI will be:


```r
height<-70
weight<- 160
BMI<- (weight/(height*height))*703
print(BMI)
```

```
## [1] 22.96
```

Please check this amazing application for more personlized BMI calculations.

http://saraalofaysan.shinyapps.io/DDP_project/

--- .class #id 
## What Does Your Result Means?

* a BMI less than 18 means that you are under weight.
* a BMI between 18 and 24.9 means a perfect weight to your height.
* a BMI between 25 and 29.9 means taht you have an extra weight on your body.
* a BMI of 30 or more indicates obesity.

--- .class #id 
## Thank You


