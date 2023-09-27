Przygotuj tabelę starocie:
CREATE TABLE `starocie` (
  `kolor` varchar(20) default NULL,
  `rok` varchar(4) default NULL,
  `marka` varchar(20) default NULL,
  `mo` varchar(20) default NULL,
  `koszt` float(10,3) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
 
INSERT INTO `starocie` (`kolor`,`rok`,`marka`,`mo`,`koszt`) VALUES ('srebrny','1998','Porsche','Boxter','17992.539');
INSERT INTO `starocie` (`kolor`,`rok`,`marka`,`mo`,`koszt`) VALUES (NULL,'2000','Jaguar','XJ','15995.000');
INSERT INTO `starocie` (`kolor`,`rok`,`marka`,`mo`,`koszt`) VALUES ('czerwony','2002','Cadillac','Escalade','40215.898');
 
-- Zmodyfikuj tabelę:
-- 1. zmień nazwę tabeli starocie  na samochody
 
-- 2. dodaj kolumnę id_samochodu : całkowity, nie pusty, autoinkrementacja, na początku tabeli, klucz podstawowy
 
-- 3. Jako drugą dodaj kolumnę numer - tekst do 16 znaków
 
-- 4. zmień nazwę pola mo na model (typ bez zmian)
 
-- 5. Zmodyfikuj (modify) tabelę tak, aby kolumna kolor znalazła się za kolumną model, a kolumna rok miała typ daty i znalazła się na pierwszym miejscu w tabeli (modify też może wymagać podania typu modyfikowanego pola)
 
-- 6. Zmień nazwę kolumny koszt na cena, precyzja 7 znaków, dwa miejsca po przecinku
 
-- 7. usuń kolumnę rok