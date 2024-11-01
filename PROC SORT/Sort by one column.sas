/* Create CLASSTEST Table */
data classtest;
   infile datalines dsd;
   input
      Name :$7.
      Subject :$7.
      TestScore;
datalines4;
Judy,Math,79
Judy,Reading,91
Barbara,Math,90
Barbara,Reading,86
Barbara,Math,90
Louise,Math,72
Louise,Reading,65
James,Math,78
James,Reading,83
Joyce,Math,88
Joyce,Reading,75
William,Math,61
William,Reading,71
Henry,Math,84
Henry,Math,62
Henry,Reading,75
Jane,Math,94
Jane,Reading,96
;;;;
run;

title "CLASSTEST table before sorting";
proc print data=classtest;
run;
title;

proc sort data=classtest out=classtest_sort;
    by Name;
run;

title "CLASSTEST_SORT table after sorting by Name in ascending sequence";
proc print data=classtest_sort;
run;
