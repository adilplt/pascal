program monate;

uses sysutils, typinfo;

type 
    TMonate     = (Januar, Februar, Maerz, April, Mai, Juni, Juli, August, September, Oktober, November, Dezember);
    TWerte      = array [TMonate] of byte;
    TWertemenge = set of byte;

var werteArray : TWerte;
    result: TWertemenge;
    i : byte;

procedure writeset(Wertemenge : TWertemenge);
var i : byte;
begin
    for i in Wertemenge do
        write(i, ' ');
end;

function EnthalteneWerte (Werte : TWerte) : TWertemenge;
var Monat : TMonate;
    Menge : TWertemenge;
    begin
        Menge := [];
            for Monat := low(TMonate) to high(TMonate) do
            begin
                Menge := Menge + [Werte[Monat]];
                writeln('');
                writeset(Menge);
            end;
        EnthalteneWErte := Menge;
    end;


begin
werteArray[Januar]    := 1;
werteArray[Februar]   := 2;
werteArray[Maerz]     := 3;
werteArray[April]     := 4;
werteArray[Mai]       := 5;
werteArray[Juni]      := 6;
werteArray[Juli]      := 7;
werteArray[August]    := 8;
werteArray[September] := 9;
werteArray[Oktober]   := 10;
werteArray[November]  := 11;
werteArray[Dezember]  := 12;

result := EnthalteneWerte(werteArray);
end.
