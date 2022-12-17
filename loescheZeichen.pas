program prozeduren;

var userEingabe : string;

procedure LoescheZeichen (var Eingabe : string; Raus : char);

var I : cardinal;
begin
    I := 1;
    while (I <= length(Eingabe)) do 
    begin
        if Eingabe[I] = Raus then
           Delete(Eingabe, I, 1)
        else
        inc(I);
    end;
end;

begin
readln(userEingabe);
loescheZeichen(userEingabe, 'A');    
writeln(userEingabe);
end.

