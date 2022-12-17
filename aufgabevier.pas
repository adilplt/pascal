program aufgabe4;

uses strutils;

var userEingabe    : char;
    satzEingabe    : string;
    zeichenzaehler : integer;
    gekuerzterSatz : string;
    gezaehlteWoerter : integer;
    verschobenerSatz : string;


// FUNKTIONEN & PROZEDUREN

function waehleMenuePunkt2() : char;
var eingabe : char;
    begin

        writeln('Bitte geben Sie eines der folgenden Initialien ein:');
        writeln('A) Satz eingeben');
        writeln('B) Anzahl Wörter im Satz bestimmen');
        writeln('C) Satz verschlüsseln');
        writeln('D) Satz vereinfachen');
        writeln('E) Gib Satz aus');
        writeln('F) Anzahl Wörter');
        writeln('X) Ende');   

        readln(eingabe);
        waehleMenuePunkt2 := eingabe;
    end;


function satzEingeben() : string;
// Diese Funktion fordert den Benutzer auf, einen Satz einzugeben, und gibt den Satz als Zeichenfolge zurück
var sentence : string;
// Deklariert eine String-Variable, in die der Satz eingespeichert werden soll
    begin
        writeln('Geben Sie einen Satz ein: ');
        readln(sentence);
        writeln('Du hast folgenden Satz eingegeben: ', sentence);

        satzEingeben := sentence;
    end;    

function zaehleZeichen(sentence: string): integer;
var i : integer;
    anzahlZeichen : integer;
begin
  anzahlZeichen := 0;
  for i := 1 to length(sentence) do
    if sentence[i] <> ' ' then
        anzahlZeichen := anzahlZeichen + 1;
  zaehleZeichen := anzahlZeichen;
end;


function zaehleWoerter(sentence: string): integer;
var i : integer;
    anzahlWoerter : integer;
begin
    anzahlWoerter := 0;
    for i := 1 to length(sentence) do
        if sentence[i] = ' ' then
        anzahlWoerter := anzahlWoerter + 1;
    zaehleWoerter := anzahlWoerter + 1;
end;



// function entferneLangeWoerter(sentence: string): string;
// var
//   i: integer;
//   result: string;

// begin
//   result := '';
//     for i := 1 to length(sentence) do
//         begin
//             if (sentence[i] = ' ') or (i = length(sentence)) then
//                 begin
//                     if length(result) <= 4 then
//                         writeln(result);
//       result := '';
//     else
//     begin
//       result := result + sentence[i];
//     end;
//   end;
// end;

function entferneLangeWoerter(satzEingabe: string): string;
var
  aktuellesWort: string;
  i: integer;
  result: string;
begin
  result := '';
  aktuellesWort := '';

  for i := 1 to length(satzEingabe) do
  begin
    if satzEingabe[i] <> ' ' then
        aktuellesWort := aktuellesWort + satzEingabe[i]
    else
        begin
    if length(aktuellesWort) <= 4 then
                result := result + aktuellesWort + ' ';
   aktuellesWort := '';
        end;
   end;
        if length(aktuellesWort) <= 4 then
        begin
            result := result + aktuellesWort;
        end;

    entferneLangeWoerter := result;
end;


function zeichenVerschieben(satzEingabe: string): string;
var
  i: integer;
  result: string;
begin
  result := '';
  for i := 1 to length(satzEingabe) do
  begin
    result := result + chr(ord(satzEingabe[i]) + 2);
    end;
    zeichenVerschieben := result;
end;



// PROGAMMBEGINN

begin

    repeat 
    
        // userEingabe := ' ';
        userEingabe := waehleMenuePunkt2();
        // waehleMenuePunkt(userEingabe);
        writeln('Zeichen: ', userEingabe);

        case userEingabe of
            'A', 'a': satzEingabe := satzEingeben();
            'B', 'b': 
                begin
                    if length(satzEingabe) > 0 then
                        begin
                            zeichenzaehler := zaehleZeichen(satzEingabe);
                            writeln('Dein Satz "' ,satzEingabe, '" beinhaltet ', zeichenzaehler, ' Zeichen.');
                        end
                    else writeln('Satz eingeben.');
                end;    
            'C', 'c': 
                begin
                    if length(satzEingabe) > 0 then
                        begin
                            verschobenerSatz := zeichenVerschieben(satzEingabe);
                            writeln('Der verschlüsselte Satz lautet: ' ,verschobenerSatz);
                        end;
                end;
            'D', 'd': 
                begin
                    if length(satzEingabe) > 0 then
                        gekuerzterSatz := entferneLangeWoerter(satzEingabe);
                        writeln('Dein vereinfachter Satz lautet: ' ,gekuerzterSatz);
                end; 
            'F', 'f': 
                begin
                    if length(satzEingabe) > 0 then
                        begin
                            gezaehlteWoerter := zaehleWoerter(satzEingabe);
                            writeln('Dein Satz "' ,satzEingabe, '" beinhaltet ', gezaehlteWoerter, ' Woerter.');
                        end
                     else 
                        writeln('Satz eingeben.');
                end;
        end;

    until userEingabe = 'X';

end.
