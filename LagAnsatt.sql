DROP TABLE IF EXISTS Ansatt;

CREATE TABLE IF NOT EXISTS Ansatt
(
  AnsattNr    INTEGER,
  Etternavn   VARCHAR(40),
  Fornavn     VARCHAR(20),
  Fødselsdato DATE,
  Ansattdato  DATE,
  Stilling    VARCHAR(30),
  Avdeling    VARCHAR(20),
  Lønn        DECIMAL(8, 2),
  PRIMARY KEY (AnsattNr)
);


INSERT INTO Ansatt (AnsattNr, Etternavn, Fornavn, Fødselsdato, Ansattdato, Stilling, Avdeling, Lønn)
VALUES
  (1,  'Veum',       'Varg',       '1972-11-01', '2000-01-01', 'Assistent',       'Lager',          423000.00),
  (2,  'Stein',      'Trude',      '1982-10-10', '2008-10-10', 'DBA',             'IT',             670500.00),
  (3,  'Dudal',      'Inger-Lise', '1998-03-09', '2006-12-24', 'Sekretær',        'Økonomi',        499000.00),
  (4,  'Hansen',     'Hans',       '1993-12-31', '2014-08-23', 'Programmerer',    'IT',             525200.00),
  (5,  'Bjørnsen',   'Henrik',     '1978-05-17', '2008-01-01', 'Selger',          'Marked',         575000.00),
  (6,  'Gredelin',   'Sofie',      '1980-06-23', '2006-05-18', 'Underdirektør',   'Administrasjon', 825800.00),
  (7,  'Zimmermann', 'Robert',     '1984-07-24', '2003-05-17', 'Regnskapsfører',  'Økonomi',        575000.00),
  (8,  'Nilsen',     'Lise',       '1981-01-31', '2010-04-03', 'Direktør',        'Administrasjon', 875300.00),
  (11, 'Fosheim',    'Katinka',    '1983-02-28', '2009-09-13', 'Selger',          'Marked',         620000.00),
  (13, 'Lovløs',     'Ada',        '1991-12-01', '2013-08-12', 'Programmerer',    'IT',             584200.00),
  (16, 'Fjeld',      'Jørn',       NULL,         '2016-01-02', 'Selger',          'Marked',         546000.00),
  (17, 'Karlsen',    'Arve',       '1986-10-03', '2017-05-17', 'Lagerleder',      'Lager',          520100.00),
  (20, 'Felgen',     'Reodor',     '1989-09-12', '2009-12-12', 'Sykkelreparatør', 'Lager',          479500.00),
  (23, 'Norheim',    'Ola',        '1988-03-02', '2009-12-13', 'Salgssekretær',   'Marked',         527300.00),
  (29, 'Wirkola',    'Gabriel',    '1982-07-25', '2017-04-21', 'Sekretær',        'Marked',         507000.00);
