

title "Listing of SASHELP.CLASS";
proc print data=sashelp.class noobs label;   /*1*/
    var Name Age Height;                     /*2*/
    label Name="First Name"                  /*3*/
          Height="Height (in)";
run;
