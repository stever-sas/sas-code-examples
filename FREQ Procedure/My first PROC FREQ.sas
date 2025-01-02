/************************************************************************************************/
/* BASIC FREQUENCY COUNTS                                                                       */
/*     This program generates frequency counts for each unique value of TYPE in the             */
/*          SASHELP.CARS table.                                                                 */
/*     Primary Syntax: PROC FREQ                                                                */
/*     SAS Versions: SAS 9, SAS Viya                                                            */
/*     1. The DATA= option names in the input table.                                            */
/*     2. The TABLE or TABLES statement names the column(s) to generate frequency counts.       */
/*     <Additional lines as necessary>                                                          */
/************************************************************************************************/

title "Number of Cars by TYPE";
proc freq data=sashelp.cars;    /*1*/
    tables type;                /*2*/
run;
title;

