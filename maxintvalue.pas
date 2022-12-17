program xxx;

uses math;

var a : array[0..3] of longint;

begin
a[0] := 3;
a[1] := 0;
a[2] := 0;
a[3] := 0;
writeln(MaxIntValue(a));
end.