#include<iostream.h> 

#include<conio.h> 

#include<process.h> 

#include<stdlib.h> 

#include<fstream.h> 

char ch; 

class ele{ 

int atmno; 

char name[20]; 

int mass; 

char sym[5]; 

public: 

void ins() 

{ 

cout<<" Enter Name of New Element"; 

cin>>name; 

cout<<" Enter Atomic Number of "<<name; 

cin>>atmno; 

cout<<" Enter Symbol for "<<name; 

cin>>sym; 

cout<<" Enter Atomic Mass of "<<name; 

cin>>mass; 

       } 

       void disp() 

       {cout<<" Symbol : "<<sym<<"\n Name : "<<name<<" \n Atomic Number: "<<atmno<<"\n Atomic Mass : "<<mass ; 

       }	}; 

void lstele() 

{system("lst.exe"); 

} 

void search(){system("SEARCH.EXE");} 

void insdel() 

{clrscr(); 

cout<<" Select an Operation\n 1. Insert Element\n 2. Delete Element\n "; 

cin>>ch;system("pause"); 

if(ch=='1') 

system("ins.exe"); 

if(ch=='2') 

system("del.exe"); 

else 

{cout<<"\n Nothing to do \n\n Returning to main\n "; 

system("pause"); 

system("main.exe");} 

} 

void ext() 

{clrscr(); 

system("ext.exe"); 

} 

void help() 

{system("hlp.exe"); 

} 

void credits() 

{ cout<<"Opening File"; 

system("crd.exe"); 

 

} 

 

void main() 

{ 

clrscr(); 

ofstream fout("data.dat",ios::out|ios::binary); 

fout.close(); 

cout<<"	 		         Periodic Table	" ; 

cout<<"\n\n Welcome!!!\n \n What do you want to do ?\n "; 

lb: 

cout<<"\n 1. View Periodic Table\n 2. Search an Element \n 3. Insert/Delete an Element \n 4. Help \n 5. Credits \n 6. EXIT"; 

cout<<"\n\n Enter Your Choice : "; 

cin>>ch;system("pause"); 

switch(ch) 

       {	case '1':lstele(); 

break; 

case '2': search(); 

break; 

case '3': insdel(); 

break; 

case '6': ext(); 

break; 

case '4':help(); 

break; 

case '5':credits(); 

default :cout<<" Invalid Choice"; 

goto lb; 

       } 

getch();}	 
