# sas-code-examples

This repository provides a collection of example SAS programs. Each program is stand-alone, so it can be excuted in your SAS execution environment of choice to view the log and results. 

## Program Structure and Requirements
* Each program includes a standard comment block at the top of the program. [Access comment-template.txt to view the comment template and an example](https://github.com/stever-sas/sas-code-examples/blob/400d5fe7b9b914319439f773f10beb13d2a49a29/comment-template.txt). The comment provides the following information:
  - TITLE: Brief program description in ALL CAPS
  - Description: A detailed explanation of the objective of the program
  - SAS Version: List the versions of SAS for the program, such as SAS 9 or SAS Viya. Note that most programs will run in both SAS 9 and Viya.
  - Documentation: Provide a link to SAS documentation that supports the key objective of the program. When copying the URL, look for the version qualifier, which is likely _9.4_3.5_ or _v__ followed by a number. Replace the version number with the word _default_ in the URL, then test. The link should automatically direct to the latest version of the documentation page. For example, if the URL for PROC PRINT is https://go.documentation.sas.com/doc/en/pgmsascdc/v_058/proc/p10qiuo2yicr4qn17rav8kptnjpu.htm, then change it to https://go.documentation.sas.com/doc/en/pgmsascdc/default/proc/p10qiuo2yicr4qn17rav8kptnjpu.htm in the comment block.
  - Numbered list describing each numbered comment in the program: Use /*1*/ comment notation in the program to identify a particular part of the program.  
* Each program should execute successfully regardless of the programming interface, including SAS Studio, Enterprise Guide, Visual Studio Code, etc. If there are exceptions or requirements, they are noted in the comment.
* When possible, SASHELP tables are used. If other data is necessary, tables are created in the code using a DATA step with DATALINES. If data is embedded in the program, it must be approved by SAS Legal.
 
