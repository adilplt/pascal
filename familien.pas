program familie;

uses sysutils;
 
type
  person = record
    
    
    vorname : string;
    nachname: string;
    alter   :   byte;
  end;
  
var       
  person1, 
  person2, 
  person3: person;
  personen: array [0..2] of person;
  
procedure writePersons(personen : array of person);
 var     i       : byte;

 begin

 
   FOR i := 0 to (Length(personen) - 1) do
     writeln(personen[i].vorname + ' ' + personen[i].nachname
            + ', Alter: ' + IntToStr(personen[i].alter));
 end;
 
  

begin
   
   // person 1
   person1.vorname   := 'Adil';
   person1.nachname  := 'Polat';
   person1.alter     :=  22;
   
    // person 2
   person2.vorname   := 'Esma';
   person2.nachname  := 'Polat';
   person2.alter     :=  14;
   
     // person 3 
   person3.vorname   := 'Orhan';
   person3.nachname  := 'Polat';
   person3.alter     :=  52;
   
   personen[0] := person1;
   personen[1] := person2;
   personen[2] := person3;
   
   writePersons(personen);
            
end.
   
   
   






