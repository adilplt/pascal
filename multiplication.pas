program multiplication;

var factor: array[1..2] of integer;
var product: integer;
var     a, b: integer;



function multiplicateFunction (factor1, factor2 : integer) : integer;
begin
multiplicateFunction := factor1 * factor2; 
end;


procedure multiplicateProcedure (factor1, factor2 : integer; var product : integer);
begin
product := factor1 * factor2; 
end;

begin

writeln('Gebe zwei Faktoren ein: ');
readln(a, b);
product := multiplicateFunction(a, b);
writeln(product);

multiplicateProcedure(a, b, product);
writeln(product);


end.