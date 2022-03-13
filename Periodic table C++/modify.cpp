#include<iostream.h> 

#include<conio.h> 

#include<process.h> 

#include<fstream.h> 

#include<string.h> 

char ch; 

class ele{ 

int atmno; 

char name[20]; 

float mass; 

char sym[5];char ch; 

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

       {cout<<" Symbol : "<<sym<<"\n Name : "<<name<<" \n Atomic Number: "<<atmno<<"\n Atomic Mass : "<<mass ; 

       }	 

int getatmno() 

{return atmno;} 

void modify(); 

}e1,elmn; 

void ele::modify() 

{cout<<"NAME:"<<name<<endl<<"ATOMIC NO.:"<<atmno<<endl<<"SYMBOL :"<<sym<<endl<<"ATOMIC MASS:"<<mass <<endl; 

cout<<"ENTER NEW DETAILS"<<endl; 

char nm[20]=" ",symn[5]; 

float mas; 

cout<<"NEW NAME:(enter'.'to retain old one)"; 

cin>>nm; 

cout<<"NEW SYMBOL:(press'.'to retain old one)"; 

cin>>symn; 

cout<<"NEW MASS:(press'-1' to retain old one)"; 

cin>>mas; 

if (strcmp(nm,".")!=0) 

strcpy(name,nm); 

if(strcmp(symn,".")!=0) 

strcpy(sym,symn); 

/*if(mas==-1) 

strcpy(mass,mas);*/ 

} 

void main() 

{fstream fout("DATA.dat",ios::in|ios::out|ios::binary); 

int atno;long pos;char found='f'; 

do 

{cout<<"ENTER ATOMIC NUMBER WHOSE RECORD TO BE MODIFY\N"; 

cin>>atno; 

while(!fout.eof()) 

{ pos=fout.tellg(); 

fout.read((char*)&e1,sizeof(e1)); 

if(e1.getatmno()==atno) 

  {e1.modify(); 

 	   fout.seekg(pos); 

           fout.write((char*)&e1,sizeof(e1)); 

           found='t'; 

   break; 

} 

} 

 	if(found=='f') 

   cout<<"record not found!!!\n"; 

fout.seekg(0); 

         cout<<"want to modify more(y/n):";  

 

 cin>>ch;   

} 

 while(ch=='Y'||ch=='y'); 

fout.close(); 

} 
