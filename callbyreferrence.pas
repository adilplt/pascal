PROGRAM Call_by_Reference_Beispiel;
USES Crt;
 
VAR i: LongInt;
 
PROCEDURE Inkrementieren (Variable: LongInt);  (* beachten Sie das VAR! *)
BEGIN
  Variable := Variable + 1;
      (* ändert die globale Variable i, die referenziert wird!
         sonst würde diese Zeile auch nicht viel Sinn machen,
         da der geaenderte Wert nirgendwo verwendet wird *)
END;
 
BEGIN
  i := 5; (* initialisieren *)
  ClrScr;
 
  Inkrementieren (i);   (* i an Inkrementieren uebergeben *)
 
  WriteLn ('Neuer Wert von i: ',i);    (* zeigt den geaenderten Wert an! *)
  ReadKey;
END.