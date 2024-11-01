/************************************************************************************************/
/* GROUP ROWS IN A REPORT                                                                       */
/*     1. Rows must first be arranged by the grouping variable(s) prior to PROC PRINT.          */
/*     2. The BY statement creates a separate report for each unique BY variable value.         */
/*     3. An alternative grouped report uses the BY statement combined with the ID statement.   */
/*        The BY variable values replace the OBS column in the report.                          */
/************************************************************************************************/

proc sort data=sashelp.class out=class_sort;  /*1*/
    by Age;
run;

title "Listing of SASHELP.CLASS by Age (BY statement)";
proc print data=class_sort;                   /*2*/
    by Age;
run;

title "Listing of SASHELP.CLASS by Age (BY and ID statements)";
proc print data=class_sort;                   /*3*/
    by Age;
    id Age;
run;
title;
