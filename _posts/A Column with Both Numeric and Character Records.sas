/*******************************
***created by: chenwen_23@163.com
***date: 2024-09-11
*********************************/

/*method 1*/
proc import datafile="F:\Mygit\blog\Wen-911.github.io\_posts\A Column with Both Numeric and Character Records.xlsx"
	out=test1 
	dbms=xlsx replace;
	getnames=yes;
run;

/* method 2: 
Assuming columns A through C are all character types 
假设都是字符型 */
data test2;
    infile 'F:\Mygit\blog\Wen-911.github.io\_posts\A Column with Both Numeric and Character Records.csv' dlm=',' firstobs=2; /* 假设第一行为标题 */
    input
        A $  
        B $
        C $ 
        ;
run;
