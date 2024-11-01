/************************************************************************************************/
/* DEFAULT REPORT LISTING ALL ROWS AND COLUMNS                                                  */
/*     This program lists all rows and columns from the SASHELP.CLASS table. The OBS column in  */ 
/*     the output report is not in the data but is displayed by default.                        */
/************************************************************************************************/

title "Listing of CLASS";
proc print data=sashelp.class;
run;
