#include<fstream.h> 

#include<conio.h> 

#include<stdlib.h> 

#include<stdio.h>   //for rename()&remove() 

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

cout<<"Enter Nature of "<<name; 

gets(nature); 

       } 

int getatmno(){return atmno;} 

       void disp() 

       {cout<<" Symbol : "<<sym<<"\n Name : "<<name<<" \n Atomic Number: "<<atmno<<"\n Atomic Mass : "<<mass<<"\n Nature: "<<nature; 

       }	}e1,tmp; 

void main() 

{ifstream fout("DATA.dat",ios::in); 

 ofstream fin("temp.dat",ios::out); 

int atno; 

char found='f',confirm='n'; 

cout<<"enter the atomic number of element whose record is to be deleted\n"; 

cin>>atno; 

while(!fin.eof()) 

{fout.read((char*)&e1,sizeof(e1)); 

if(e1.getatmno()==atno) 

{e1.disp(); 

found='t'; 

cout<<"are you sure,you want to delete this record?(y/n)....\n"; 

cin>>confirm; 

if(confirm=='n') 

fin.write((char*)&e1,sizeof(e1)); 

} 

else 

fin.write((char*)&e1,sizeof(e1)); 

} 

if(found=='f') 

cout<<"record not found...\n"; 

fin.close(); 

fout.close(); 

remove("DATA.dat"); 

rename("temp.dat","DATA.dat"); 

getch();} 
