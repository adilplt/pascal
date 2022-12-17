program Prim;
var
  Teiler : Word;
  Pruefzahl : Word;
  Rest : Word;


begin
repeat
Write ('Eingabe der zu prüfende Zahl (>= 2): '); readln (Pruefzahl);
  until Pruefzahl >= 2;
Teiler := 1;

  repeat
      Teiler := Teiler + 1;
      Rest := Pruefzahl mod Teiler;
  until Rest = 0;
  if Teiler = Pruefzahl then
      writeln ('Zahl ist eine Primzahl!')
  else
      writeln ('Zahl ist keine Primzahl!');
readln;