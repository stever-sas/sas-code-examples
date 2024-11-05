data cars_new;
    set sashelp.cars;
    where Origin="Europe";
    KmH_Highway=MPG_Highway*1.609344;
    KmH_City=MPG_City*1.609344;
    KmH_Average=mean(KmH_highway, KmH_City);
    format KmH: 4.1;
    keep Make Model Type KmH:;
run;

title "First 10 Rows of CARS_NEW";
proc print data=cars_new(obs=10);
run;
title;
