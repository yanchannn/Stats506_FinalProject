# Stats506_FinalProject
Author: Yan Chen, yanchann@umich.edu

## About 

This repository Stats506_FinalProject is for sharing the source code and report of the final project for the course Stats506 in Fall 2020.


## File Description

Source code files are under [`code`](https://github.com/yanchannn/Stats506_FinalProject/tree/main/code) folder:

- `data.sh`: download data

- `preprocessing.sas`: contains code for data preprocessing

- `analysis.sas`: contains code for the data analysis save the results in file `cbecs.csv`

Output .csv files are under [`results`](https://github.com/yanchannn/Stats506_FinalProject/tree/main/results) folder :

- `cbecs.csv`: contains the point estimates and 95% CI from SAS

- `diffmean.csv`: contains the difference between domain means, the standard error of the difference, and the t test statistics

Other files:

- `final.rmd`: contains code for plot the results

- `final.html`: the write-up for this project


## Project  Overview

This project aims to answer the question: 

**Do buildings with electrical upgrades in the past year consume less electricity than those without recent upgrades?**

## Data

I use the 2012 US Commercial Building Energy Consumption Survey [(CBECS)](https://www.eia.gov/consumption/commercial/data/2012/index.php?view=microdata)

Key variables: 

|  Variable               | Description                                         |
| ----------------------- | ----------------------------------------------------|
| `PUBID` | Building identidier                  |
|`REGION`        | 4 Census region                                |
|`PBA`          | primary building activity (only use these 5: office, warehouse, education, shopping, and service)                    |
|`SQFT`          | Square footage |
|`ELCNS` | annual electricity consumption (kWh)  |
|`RENELC`   | indicator of electrical upgrade: yes or no |
|`FINALWT`| final full sample building weight |
|`FINALWT1-197`| final replicate weight |




