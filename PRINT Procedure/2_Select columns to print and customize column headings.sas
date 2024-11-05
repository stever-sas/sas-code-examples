/************************************************************************************************/
/* SELECT COLUMNS TO PRINT AND CUSTOMIZE COLUMN HEADINGS                                        */
/*     1. The NOOBS option suppresses the OBS column. The LABEL option displays labels instead  */
/*        of column names.                                                                      */
/*     2. The VAR statement lists the columns to print and the display order.                   */
/*     3. The LABEL statement assigns column labels.                                            */ 
/************************************************************************************************/

title "Listing of SASHELP.CLASS";
proc print data=sashelp.class noobs label;   /*1*/
    var Name Age Height;                     /*2*/
    label Name="First Name"                  /*3*/
          Height="Height (in)";
run;
title;