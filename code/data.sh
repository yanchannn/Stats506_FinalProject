#!usr/bin/env bash

# 79: -------------------------------------------------------------------------
# Final Project, Download data for the final project
#
# Download 2012 US Commercial Building Energy Consumption Survey data.
#
# Author: Yan Chen (yanchann@umich.edu)
# Updated: Dec 7, 2020
# 79: -------------------------------------------------------------------------

# input parameters: -----------------------------------------------------------
base_url=https://www.eia.gov/consumption/commercial/data/2012/xls

# download microdata: ---------------------------------------------------------

## 20012 CBECS
if [ ! -f 2012_public_use_data_aug2016.csv ]; then
    wget $base_url/2012_public_use_data_aug2016.csv
fi
