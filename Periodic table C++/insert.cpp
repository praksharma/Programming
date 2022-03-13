#include<fstream.h> 

#include<conio.h> 

#include<stdlib.h> 

#include<stdio.h> 

char ch; 

class ele{ 

int atmno; 

char name[20]; 

float mass; 

char sym[5]; 

char nature[20]; 

public: 

void ins() 

{ 

cout<<"Enter Name of New Element: "; 

cin>>name; 

cout<<" Enter Atomic Number of "<<name<<" : "; 

cin>>atmno; 

cout<<" Enter Symbol for "<<name<<" : "; 

cin>>sym; 

cout<<" Enter Atomic Mass of "<<name<<" : "; 

cin>>mass; 

cout<<" Enter Nature of "<<name<<":"; 

gets(nature); 

       } 

       void disp() 

       {cout<<" Symbol : "<<sym<<"\n Name : "<<name<<" \n Atomic Number: "<<atmno<<"\n Atomic Mass : "<<mass<<"\n Nature: "<<nature; 

       }	}; 

 

void main() 

{ clrscr();  

ele ins[1]; 

ofstream fout("DATA.dat",ios::in|ios::app); 

 

do{ 

clrscr();cout<<"\n DATABASE OPENED\n \n "; 

ins[1].ins(); 

fout.write((char*) & ins[1],sizeof (ins[1])); 

cout<<"\n Element Successfully inserted in the DATABASE"; 

cout<<"\n Want to insert again ? (Y/N) : ";cin>>ch; 

}while(ch=='Y'||ch=='y'); 

fout.close();system("pause");system("main.exe"); 

getch();} 
