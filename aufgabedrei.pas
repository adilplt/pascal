program aufgabeDrei;

uses sysutils;

const LOWER_BORDER =       126;
      UPPER_BORDER =       150;

var   x            : integer;

function durchDreiTeilbar(x : integer) : Boolean;
begin
    if x mod 3 = 0 then
            durchDreiTeilbar := TRUE
    else 
            durchDreiTeilbar := FALSE;
end;

function zahlenfolge(x : integer) : string;
    var tmp : integer;
        y   :  string;
begin
    if x > 1 then
        begin
            tmp := x;   
            y   := IntToStr(tmp);   
            while (x * tmp) < 1000 do
            begin
                x           := x * tmp; 
                y := y + ' -> ' + IntToStr(x);   
            end;
            zahlenfolge := y;
        end;
end;

function groessteZahl(x : integer) : integer;
var numberToStr : string;
              y :   char;
begin
    numberToStr := IntToStr(x); // Zuweisung von rechts nach links
    for y in numberToStr do
        write(y, ' ');
end;


// ist x durch drei teilbar?
begin
    FOR x := LOWER_BORDER to UPPER_BORDER do
    begin
        // writeln(x, ' : ', durchDreiTeilbar(x), ' ', zahlenfolge(x));
        groessteZahl(x);
        writeln('');
    end;
end.


1 3 7
3 1 7
7 1 3




