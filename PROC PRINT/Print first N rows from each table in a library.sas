/************************************************************************************************/
/* PRINT FIRST N ROWS FROM EACH TABLE IN A LIBRARY (%PRINTALL MACRO)                            */
/*     The %PRINTALL macro allows you to provide a library name and number of observations. The */
/*     macro executes a PROC PRINT for each table in the library and diplays the first N rows.  */
/*     Examples:                                                                                */
/*         %printall(lib=work, obs=10)                                                          */
/*         %printall(lib=maps, obs=5)                                                           */
/************************************************************************************************/

%macro printall(lib= , obs=5);
   %local obs num i;
   proc datasets library=&lib memtype=data nodetails;
      contents out=work.temp1(keep=memname) data=_all_ noprint;
   run;
   data _null_;
      set work.temp1 end=final;
      by memname notsorted;
      if last.memname;
      n+1;
      call symput('ds'||left(put(n,8.)),trim(memname));
      if final then call symput('num',put(n,8.));
   run;
   %do i=1 %to &num;
      proc print data=&lib..&&ds&i(obs=&obs) noobs;
         title "Data Set &lib..&&ds&i";
      run;
   %end;
%mend printall;

%printall(lib=work, obs=5)
