/************************************************************************************************/
/* ORDER ROWS IN A REPORT                                                                       */
/*     Rows must first be arranged in the desired order using PROC SORT prior to PROC PRINT.    */
/*     In this program, rows are first sorted by ascending Age, then within Age by descending   */
/*     Height. Be sure to print the sorted table.                                               */
/************************************************************************************************/

proc sort data=sashelp.class out=class_sort; 
    by Age desending Height;
run;

title "Listing of SASHELP.CLASS Sorted by Age, Height";
proc print data=class_sort;
run;
title;
