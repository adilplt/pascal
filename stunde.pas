program aktuelleStunde;

var stunde        :    byte;
    warm          : boolean;
    abenteuerlich : boolean;
    dreckig       : boolean;
    jaNeinAntwort :    char;

begin
    
    writeln('Bitte die aktuelle Zeit als ganze Stunde eingeben (0..23): ');
    readln(stunde);

    case (stunde) of
        6,  7,  8 ,  9              : writeln('Zeit zum Aufstehen und Anziehen!');
        10 ,  11 ,  12 ,  13        : writeln('Ab in die Stadt!');
        14 ,  15 ,  16 ,  17 ,  18  : writeln('Der Garten braucht Dich!');
        19, 20, 21, 22              : writeln('Freizeit :-');
        1, 2, 3, 4, 5, 0, 23        : writeln('Schlafenszeit!')

    else
        writeln('Diese Stunde gibt es gar nicht!');
    end;

    writeln('Magst Du es warm? (J/N)');
    readln(jaNeinAntwort);

    if UpCase(jaNeinAntwort) = 'J' then
       warm := TRUE
    else
       warm := FALSE;
    
    writeln('Magst Du es abenteuerlich? (J/N)');
    readln(jaNeinAntwort);

    jaNeinAntwort := UpCase(jaNeinAntwort);

    if jaNeinAntwort = 'J' then
       abenteuerlich := TRUE
    else
       abenteuerlich := FALSE;

    writeln('Magst Du es dreckig? (J/N)');
    readln(jaNeinAntwort);

    jaNeinAntwort := UpCase(jaNeinAntwort);

    if jaNeinAntwort = 'J' then
       dreckig := TRUE
    else
       dreckig := FALSE;

    // Aktivitätenermittlung

    if (warm = FALSE) and (dreckig = FALSE) and (abenteuerlich = TRUE) then
        writeln('Du solltest ins Kino gehen!')
    else if ((warm = TRUE) or (dreckig = TRUE)) and (abenteuerlich = FALSE) then
        writeln('Du solltest Unkraut jäten!')
    else if (warm = FALSE) and (abenteuerlich = FALSE) and (dreckig = FALSE) then
        writeln('Du solltest kalt duschen gehen!')
    else if (warm = FALSE) and (abenteuerlich = FALSE) and (dreckig = FALSE) then
        writeln('Monster unter dem Bett suchen!');


end.

