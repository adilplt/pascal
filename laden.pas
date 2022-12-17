// Gegeben sind die folgenden Variablendeklarationen:
// var
// Heute : TWochentage;
// Oeffnung : TVolleStunden;
// Schliessung : TVolleStunden;

// Formulieren Sie ausgehend von diesen Variablendeklarationen eine caseAnweisung, in der ausgehend vom Wert der Variablen Heute die Werte der
// beiden Variablen Oeffnung und Schliessung gesetzt werden (um z.B.
// Ladenöffnungszeiten zu bestimmen).
// Montags soll die Öffnung um 8 Uhr beginnen, die Schließung um 12 Uhr
// stattfinden. Dienstags bis donnerstags und am Sonntag soll die Öffnung
// ebenfalls 8 Uhr erfolgen, die Schließung erst um 18 Uhr. Am Freitag und am
// Samstag soll 9 Uhr geöffnet und erst um 22 Uhr geschlossen werden.
// Formulieren Sie die case-Anweisung so, dass für alle Tage, an denen identische
// Zeiten gelten sollen, genau ein Fall in der case-Anweisung vorgesehen ist:


// PROGRAMMANFANG

program ladenOeffnung;

var  heute : TWochentage;
     oeffnung : TVolleStunden;
     schliessung : TVolleStunden;

heute := dienstag;
case Heute of
Montag: begin
Oeffnung := 8;
Schliessung := 12;
end;
Dienstag..Donnerstag,
Sonntag: begin
Oeffnung := 8;
Schliessung := 18;
end;
Freitag,
Samstag: begin
Oeffnung := 9;
Schliessung := 22;
end;
end;