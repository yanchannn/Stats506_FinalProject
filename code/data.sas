/* ------------------------------------------------------------------------- *
 * Final Project
 * Stats 506, Fall 2020
 *
 * This file is used to convert data set from csv file to .bdat.
 *
 * Author: Yan Chen (yanchann@umich.edu)
 * ------------------------------------------------------------------------- *
*/

/* 79: --------------------------------------------------------------------- */
/* library: ---------------------------------------------------------------- */
libname mylib '/home/yanchann/stats506/fp';

/* import data ------------------------------------------------------------- */
proc import
  datafile = '/home/yanchann/stats506/fp/2012_public_use_data_aug2016.csv'
  out = mylib.cbecs 
	(keep = pubid region pba sqft elcns renelc finalwt finalwt1-finalwt197) 
	replace;


/*data preprocessing */
data  mylib.cbecs;
  set mylib.cbecs;
  if renelc = . then delete; 
  * only choose five major activity;
  if pba = '02' then activity = 'Office';
  if pba = '05' then activity = 'Warehouse';
  if pba = '14' then activity = 'Education';
  if pba = '23' or PBA = '24' or PBA = '25' then activity = 'Shopping';
  if pba = '26' then activity = 'Service';
  * delete obs with any missing value;
  if cmiss(of _all_) then delete;
  * create a new variable equal to the building-level energy intensity;
  bleu = elcns/sqft;
run;




