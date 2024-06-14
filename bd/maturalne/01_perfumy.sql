-- Zadanie 6.1. (0–1)
-- Podaj listę wszystkich nazw perfum, których jednym ze składników jest „absolut jasminu”.

-- Zadanie 6.2. (0–3)
-- Podaj listę różnych rodzin zapachów. Dla każdej rodziny podaj jej nazwę, cenę najtańszych perfum z tej rodziny i ich nazwę.

-- Zadanie 6.3. (0–3)
-- Utwórz uporządkowaną alfabetycznie listę wszystkich nazw marek, które nie zawierają w swoich perfumach żadnego składnika mającego w nazwie słowo „paczula”.
 
-- Zadanie 6.4. (0–3)
-- Ceny wszystkich perfum marki Mou De Rosine z rodziny o nazwie „orientalno-drzewna” zostały obniżone o 15%. Podaj listę zawierającą wszystkie nazwy takich perfum i ich ceny po obniżce. Listę posortuj niemalejąco według ceny.
SELECT nazwa_p, cena*0.85 from perfumy
    INNER JOIN marki ON perfumy.id_marki=marki.id_marki
WHERE rodzina_zapachow="orientalno-drzewna" AND nazwa_m="Mou De Rosine"
ORDER BY cena;
 
-- Zadanie 6.5. (0–2)
-- Istnieją marki, których wszystkie perfumy należą do tylko jednej rodziny zapachów. Podaj listę wszystkich nazw takich marek. Lista powinna zawierać nazwy marek i nazwy odpowiednich rodzin zapachów.
CREATE VIEW widok1 AS 
SELECT DISTINCT id_marki, rodzina_zapachow
FROM perfumy;

SELECT id_marki
FROM widok1
GROUP BY id_marki
HAVING Count(*)=1;

SELECT DISTINCT nazwa_m,rodzina_zapachow
FROM perfumy
    INNER JOIN marki ON perfumy.id_marki=marki.id_marki
WHERE marki.id_marki IN (SELECT widok1.id_marki
                        FROM widok1
                        GROUP BY id_marki
                        HAVING Count(*)=1
                        );

