program test;

type Wochentage        = (Sonntag, Montag, Dienstag, Mittwoch,
                          Donnerstag, Freitag, Samstag);
     Ampelfarben       = (rot, gelb, gruen);
     Himmelsrichtungen = (Nord, Ost, Sued, West);
     Monate            = (Januar, Februar, Maerz, April, Mai,
                          Juni, Juli, August, September, Oktober,
                          November, Dezember);
     Jahreszeiten      = (Fruehling, Sommer, Herbst, Winter);
     Studienfaecher    = (B_ECom, B_CGT, B_DSAI, B_IMCA, B_Inf,
                         B_ITE, B_MInf, B_STec, B_TInf, B_WInf);
     Kontinente        = (Afrika, Amerika, Asien, Australien,
                          Europa);
     Personen          = (Andreas, Bernd, Dennis, Jan, Kevin,
                          Malte, Rainer, Tom, Willi);

var Tag, Heute  : Wochentage;
    Ampelzustand: Ampfelfarben;

begin

   Tag := Montag;
   Heute := Tag;
   Ampelzustand := rot;


if (Tag = Samstag) or (Tag = Sonntag) then
      writeln ('FH Wedel geschlossen');
    Arbeiten := (Tag >= Montag) and (Tag <= Freitag);

end.