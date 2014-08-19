*'; *"; run; quit; */;
dm 'output' clear;
dm 'log' clear;

proc datasets lib=work nolist nowarn kill; run; quit;

***********************************HEADER**********************************************;
%include "[Complete header file path]";

***********************************IMPORT**********************************************;
*Moving datasets from sasdata lib to work;
%copy_dataset(in_lib,out_lib,in_dataset,out_dataset);

***********************************CHECKING********************************************;

[Code goes here]

***********************************EXPORT**********************************************;
*Moving datasets from work to sasdata lib;
%copy_dataset(in_lib,out_lib,in_dataset,out_dataset);

***********************************END*************************************************;
dm 'log';