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

/************************************************************************************************/
/* SORT BY GROUPS AND IN DESCENDING ORDER                                                       */
/*     This program reads CLASSTEST, sorts rows by Subject in ascending order, then within      */
/*     Subject by Score in descending order. The sorted data is saved in a new table            */
/*     WORK.CLASSTEST_SORT. Note that the keyword DESCENDING changes the order for the          */
/*     variable it precedes.                                                                    */
/************************************************************************************************/

proc sort data=classtest out=classtest_sort;
    by Subject descending Score;
run;

title "CLASSTEST_SORT table sorted by descending Score within Subject";
proc print data=classtest_sort;
run;
title;
