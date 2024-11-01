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
title;

/************************************************************************************************/
/* Create a sorted copy of a table                                                              */
/*     This program reads the SASHELP.CLASSTEST table, sorts rows by ascending Name, and then   */
/*     Subject within each Name. The sorted data is saved in a new table WORK.CLASSTEST_SORT.   */
/************************************************************************************************/

proc sort data=classtest out=classtest_sort;
    by Name Subject;
run;

title "CLASSTEST_SORT table sorted by ascending Name and Subject";
proc print data=classtest_sort;
run;
title;
