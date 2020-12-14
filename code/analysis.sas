/* ------------------------------------------------------------------------- *
 * Final Project
 * Stats 506, Fall 2020
 *
 * Compare electricity consumption for building with electrical upgrades and  
 * without electrical upgrades.
 *
 * Author: Yan Chen (yanchann@umich.edu)
 * ------------------------------------------------------------------------- *
*/

/* 79: --------------------------------------------------------------------- */
/* library: ---------------------------------------------------------------- */
libname mylib '/home/yanchann/stats506/fp';

/* define macros to export csv file, adopted from Dr. Henderson's code */
%let z = quantile('NORMAL', .975);
%macro csvexport(dataset, lib = work);
 proc export
   data = &lib..&dataset
   outfile = "./&dataset..csv"
   dbms = dlm
   replace;
  delimiter = ",";
 run;
%mend;



/* change format ----------------------------------------------------------- */
proc format;
value region
  1 = 'Northeast'
  2 = 'Midwest'
  3 = 'South'
  4 = 'West';
run;

proc format;
value renelc 
  1 = 'Yes'
  2 = 'No';
run;

/* compute the energy intensity of the electricity by the census regions */
proc surveymeans data = mylib.cbecs varmethod = jackknife mean clm;
  repweights finalwt1-finalwt197 / jkcoefs = 1;
  weight finalwt;
  var bleu;
  domain  region * activity * renelc / diffmeans;
format region region.;
format renelc renelc.;
  ods output
    Domain = cbecs
    DomainDiffs = diffmean;
run;

/* export outputs ---------------------------------------------------------- */
%csvexport(cbecs);
%csvexport(diffmean);

/* 79: --------------------------------------------------------------------- */

