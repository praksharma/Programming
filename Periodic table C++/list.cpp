#include<fstream.h> 

#include<conio.h> 

#include<process.h> 

char ch; 

 

void main() 

{	clrscr(); 

cout<<" ";char ch; 

system("pause");clrscr(); 

ifstream fin("pt.txt",ios::in); 

if(!fin) 

{cout<<"file unavailable";system("pause");system("exit");} 

while(!fin.eof()) 

{fin.get(ch);cout<<ch;} 

cout<<"\n \n \n Press 'L' to View legend \n Press 'M' To go to Main\n Enter choice : "; 

cin>>ch;clrscr();fin.close(); if(ch=='L'||ch=='l'){fin.open("legend.txt");while(!fin.eof()){fin.get(ch);cout<<ch;}cout<<"\n ";system("pause");cout<<"\n Returning to main";system("main.exe");} 

 	  if(ch=='M'||ch=='m'){cout<<"\n Returning back to Main \n ";system("pause"); system("main.exe");  

 

 

getch(); 

}} 
