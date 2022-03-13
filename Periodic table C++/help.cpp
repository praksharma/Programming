#include<fstream.h> 

#include<conio.h> 

#include<process.h> 

void main() 

{ 

clrscr();   char ch; 

cout<<" "; 

system("pause"); 

ifstream fin("hlp.txt",ios::in); 

cout<<" \n SEARCHING HELP FILE"; 

if(!fin) 

       {	cout<<" \n SORRY FOR INCONVINIENCE \n NO HELP FILE FOUND \n  "; 

system ("pause"); 

}   cout<<"\n OPENING hlp.txt \n "; 

while(!fin.eof()) 

{fin.get(ch); 

cout<<ch;} 

cout<<"/n Want to read detailed Manual (Y/N) : "; 

cin>>ch; 

if(ch=='y') 

system("doc1.pdf"); 

else  

{cout<<"\n\n  RETURNING TO MAIN PAGE \n ";system("pause"); 

system("main.exe");}   getch();} 
