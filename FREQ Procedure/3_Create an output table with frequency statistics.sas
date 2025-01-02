/************************************************************************************************/
/* CREATE OUTPUT TABLE WITH FREQUENCY STATISTICS                                                */
/*     This program uses options on the TABLES statement to generate an output table and        */
/*         suppress the displayed report.                                                       */
/*     Primary Syntax: PROC FREQ                                                                */
/*     SAS Versions: SAS 9, SAS Viya                                                            */
/*     1. The OUT= option names the output dataset. The NOPRINT option suppresses the report.   */
/************************************************************************************************/

proc freq data=sashelp.cars;    
    tables type / out=work.typefreq noprint; /*1*/        
run;
