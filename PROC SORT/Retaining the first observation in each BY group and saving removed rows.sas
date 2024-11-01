/* Create CLASSTEST Table */
data classtest;
   infile datalines dsd;
   input
      Name :$7.
      Subject :$7.
      Score;
datalines4;
Judy,Reading,91
Judy,Math,79
Barbara,Math,90
Barbara,Reading,86
Barbara,Math,90
Louise,Math,72
Louise,Reading,65
William,Math,61
William,Reading,71
Henry,Math,62
Henry,Reading,75
Henry,Reading,84
Jane,Math,94
Jane,Reading,96
;;;;
run;

title "CLASSTEST table before sorting";
proc print data=classtest;
run;

proc sort data=classtest out=classtest_sort;
    by Name Subject descending Score;
run;

proc sort data=classtest_sort dupout=classtest_dups nodupkey;
    by Name Subject;
run;

title "CLASSTEST_SORT table keeping the high Score for each Name and Subject";
proc print data=classtest_sort;
run;

title "CLASSTEST_DUPS table with the removed lower test scores";
proc print data=classtest_dups;
run;
title;
