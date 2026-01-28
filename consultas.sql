-- Pregunta 1
-- Actor o actriz con mayor cantidad de series
SELECT 
    actor_id,
    COUNT(DISTINCT serie_id) AS numero_de_series
FROM actuaciones
GROUP BY actor_id
ORDER BY numero_de_series DESC
LIMIT 1;


-- Pregunta 2
-- Serie con mejor rating promedio según IMDb
SELECT 
    serie_id,
    AVG(rating_imdb) AS rating_promedio
FROM episodios
GROUP BY serie_id
ORDER BY rating_promedio DESC
LIMIT 1;


-- Pregunta 3
-- Episodio con mayor duración
SELECT *
FROM episodios
ORDER BY duracion DESC
LIMIT 1;
