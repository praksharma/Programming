#include<iostream.h> 

#include<conio.h> 

#include<process.h> 

#include<fstream.h> 

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

cout<<" Enter Name of New Element: "; 

cin>>name; 

cout<<" Enter Atomic Number of "<<name<<" : "; 

cin>>atmno; 

cout<<" Enter Symbol for "<<name<<" : "; 

cin>>sym; 

cout<<" Enter Atomic Mass of "<<name<<" : "; 

cin>>mass; 

       } 

       void disp() 

       {cout<<" Symbol : "<<sym<<"\n Name : "<<name<<" \n Atomic Number: "<<atmno<<"\n Atomic Mass : "<<mass<<"\n Nature: "<<nature; 

       } 

int getatmno() 

{return atmno; 

} 

 

}e1; 

void main() 

{clrscr();	 

int atno; 

char found='n'; 

lb: 

ifstream fin("DATA.dat",ios::in|ios::binary); 

cout<<"\n SEARCH AN ELEMENT"; 

cout<<"\n\n\n ENTER ATOMIC NUMBER TO BE SEARCHED FOR :"; 

cin>>atno; 

while(!fin.eof()) 

{fin.read((char*)&e1,sizeof(e1)); 

if(e1.getatmno()==atno) 

{ e1.disp(); 

found='y'; 

break; 

} 

} 

 

if(found=='n')	 

cout<<"\n ATOMIC NUMBER NOT FOUND IN FILE......!!!!!!"; 

cout<<"\n\n Want to Try again ? (Y/N)\n "; 

cout<<" Enter choice : ";cin>>ch;  

fin.close();clrscr(); 

if(ch=='y'||ch=='Y'){goto lb;} 

else {cout<<"\n Returning to Main\n ";system("pause");system("main.exe");} 

getch();} 
