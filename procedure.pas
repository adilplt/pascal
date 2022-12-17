program procedures;

uses sysutils;

 var a   :           integer;
     b   :           integer;
     c   :           integer;
     min :           integer;

(*findet das minimum der 3 werte *)
procedure findMin(var x, y, z, m: integer);
// var m   : integer;
begin
   if x < y then
      m := x
   else
      m := y;
   
   if z < m then
      m := z;
end; 

//PROGRAMMSTART

begin
writeln('Gebe eine beliebige Zahl für x ein: ');
readln           (a, b, c);
findMin     (a, b, c, min);
writeln ('Minimum: ', min);
end.

