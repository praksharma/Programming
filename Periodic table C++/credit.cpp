#include<fstream.h> 

#include<conio.h> 

#include<process.h> 

void main() 

{ifstream fin("crd.txt"); char ch; clrscr(); 

while(!fin.eof()) 

{fin.get(ch); 

cout<<ch;} 

cout<<"\n\n Back To Main\n "; 

system("pause");system("main.exe"); 

getch();} 
