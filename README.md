# sas-code-examples

This repository provides a collection of example SAS programs. Each program is stand-alone, so it can be excuted in your SAS execution environment of choice to view the log and results. 

## Instructions for creating sample programs
* Use the standard comment block at the top of the program. Access the comment template and example. The comment includes the following information:
  - TITLE: Brief program description in ALL CAPS
  - Description: A detailed explanation of the objective of the program
  - SAS Version: List the versions of SAS for the program, such as SAS 9 or SAS Viya. Note that most programs will run in both SAS 9 and Viya.
  - Documentation: Provide a link to SAS documentation that supports the key objective of the program. When copying the URL, look for the version qualifier, which is likely 9.4_3.5 or v_ followed by a number. Replace the version number with the word _default_ in the URL, then test. The link should automatically direct to the latest version of the documentation page. For example, if the URL for PROC PRINT is https://go.documentation.sas.com/doc/en/pgmsascdc/v_058/proc/p10qiuo2yicr4qn17rav8kptnjpu.htm, then change it to https://go.documentation.sas.com/doc/en/pgmsascdc/default/proc/p10qiuo2yicr4qn17rav8kptnjpu.htm in the comment block.
  - Numbered list describing each numbered comment in the program. Use /*1*/ comment notation in the program to identify a particular part of the program.  
* Each program should execute successfully regardless of the programming interface, including SAS Studio, Enterprise Guide, Visual Studio Code, etc. If there are exceptions or requirements, they should be noted in the comment.
* When possible, use SASHELP tables. If you need to use other data, include the creation of the table using a DATA step with DATALINES. If data is embedded in the program, it must be either created by the author or previously approved by SAS Legal. Data from our existing courses has been approved. 
 
