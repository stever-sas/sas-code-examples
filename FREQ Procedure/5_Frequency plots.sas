/************************************************************************************************/
/* CREATE FREQUENCY PLOTS                                                                       */
/*     This program uses the PLOT= option on the TABLES statement to generate a frequency plot. */
/*     Primary Syntax: PROC FREQ                                                                */
/*     SAS Versions: SAS 9, SAS Viya                                                            */
/*     1. The PLOT=FREQPLOT option generates a bar chart representing the frequency of each     */
/*        unique value of TYPE.                                                                 */
/*     2. The ORDER=FREQ option controls the sort order of both the report and the plot. Values */
/*        are ordered by descending frequency.                                                  */
/************************************************************************************************/

title "Frequency Distribution of TYPE";
proc freq data=sashelp.cars;      
    tables type / plots=freqplot;    /*1*/          
run;

title "Descending Frequency Distribution of TYPE";
proc freq data=sashelp.cars order=freq;  /*2*/
    tables type / plots=freqplot;             
run;


