-- 1. Etternavn og årslønn for ansatte som tjener mer enn 700.000 kroner i året.
SELECT Etternavn, Lønn AS Årslønn
FROM Ansatt
WHERE Lønn > 700000;

-- 2. Etternavn, stilling og årslønn for alle som ikke er sekretærer og tjener mindre enn 500.000 kroner i året.
SELECT Etternavn, Stilling, Lønn AS Årslønn
FROM Ansatt
WHERE Stilling NOT LIKE '%sekretær%'
  AND Lønn < 500000;

-- 3. Alle stillingsbetegnelser som er i bruk, slik at ingen stillingsbetegnelser kommer flere ganger.
SELECT DISTINCT Stilling
FROM Ansatt;

-- 4. Listen av ansatte sortert først på stilling og deretter på etternavn.
SELECT *
FROM Ansatt
ORDER BY Stilling, Etternavn;

-- 5. Ansattnummer og navn for alle ansatte født i 1982, inkludert årstall for ansettelse.
SELECT AnsattNr, CONCAT(Fornavn, ' ', Etternavn) AS Navn, YEAR(Ansattdato) AS Årstall
FROM Ansatt
WHERE YEAR(Fødselsdato) = 1982;

-- 6. Etternavn og månedslønn for ansatte i markedsavdelingen.
SELECT Etternavn, ROUND(Lønn / 12, 2) AS Månedslønn
FROM Ansatt
WHERE Avdeling = 'Marked';  

-- 7. Personer ansatt før 2010 sortert på lønn, de som tjener mest først.
SELECT *
FROM Ansatt
WHERE Ansattdato < '2010-01-01'
ORDER BY Lønn DESC;

-- 8. All informasjon om ansatte som har "sekretær" i tittelen.
SELECT *
FROM Ansatt
WHERE Stilling LIKE '%sekretær%';

-- 9. Ansattnummer og stilling til alle ansatte som er eldre enn 40 år og tjener mindre enn 450.000 kroner i året.
SELECT AnsattNr, Stilling
FROM Ansatt
WHERE DATE_ADD(Fødselsdato, INTERVAL 40 YEAR) <= CURDATE()
  AND Lønn < 450000;