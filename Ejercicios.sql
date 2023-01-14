/*Ejercicio No.1 Presente nombre completo de todos los subcontratistas (SubContractor) 
que tengan un salario mayor a 3000000. Asegúrese de que se obtengan 5 registros. */

SELECT Concat (s_fname,' ',s_lname) AS Full_Name FROM subContractor WHERE salary > 3000000;

/* Ejercicio No.2 Presente el nombre de los constructores (Builder) y 
subcontratistas (SubContractor) que hayan sido contratados en el 2019*/

SELECT s_fname AS subcontratista , b_fname AS constructor FROM hireInfo INNER JOIN subContractor ON hireInfo.s_id = subcontractor.s_id INNER 
JOIN builder ON hireInfo.b_id = builder.b_id WHERE hireInfo.hiredate >= '2019-01-01' AND hireInfo.hiredate <= '2019-12-31'

/* Ejercicio No.3 Presente de todos los constructores (Builder) que tiene casas en construcción,
 el resultado en una sola columna llamada Full_Name especifica el nombre de estos constructores
 que deben estar ordenados por apellido. Asegúrese de que se obtengan 8 registros.*/

SELECT Concat (b_fname,' ', b_lname) AS Full_Name FROM house LEFT JOIN builder ON house.b_id = builder.b_id 
    GROUP BY b_lname, b_fname  ORDER BY b_lname

/* Ejercicio No.4: Presente todos los subcontratistas y los constructor que los contrató.
 Muestre los apellidos de los subcontratistas y los apellidos de los constructores junto 
 con el salario de cada subcontratista. (Asegúrese de que se obtengan 11 registros).*/

 SELECT R2.b_lname AS apellido_constructor, s_lname AS apellido_subcontratista, salary AS salario_subcontratista FROM 
    (SELECT * FROM builder NATURAL JOIN (SELECT b_id, s_id FROM hireInfo) AS R1) AS R2 NATURAL JOIN SubContractor 
    
/* Ejercicio No.5: Obtenga todos los constructores y las casas en construcción, 
el resultado presenta el apellido del constructor y el nombre de la casa ordenados
 por apellido. Algunos constructores no tienen casas en construcción deben estar incluidos.
  (Asegúrese de que se obtengan 14 registros).*/

SELECT b_lname, h_name FROM builder left join house ON house.b_id = builder.b_id
ORDER BY b_lname

/*Ejercicio No.6: Obtenga el nombre y el apellido en un solo campo llamado Full_name de los
 constructores de las casas llamadas "Nova" o "El cañaduzal". (5 registros) */

SELECT Concat (b_fname,' ', b_lname) AS Full_Name FROM house LEFT JOIN builder ON house.b_id = builder.b_id 
    WHERE house.h_name = 'Nova' OR house.h_name = 'El cañaduzal'

/* Ejercicio No.7: Presente el nombres de todas las casas que han sido construidas por los constructores
 cuyo apellido comience con una 'P', el resultado debe incluir el nombre de estos constructores y sus apellidos*/

SELECT h_name AS nombre_casa, b_fname AS nombre_constructor, b_lname AS apellido_constructor FROM house INNER JOIN 
builder ON house.b_id = builder.b_id WHERE builder.b_lname like 'P%'

 /* Ejercicio No.8: Mostrar el nombre del barrio(s) y la ciudad que tiene una casa nombrada “Las consultas”. 
 Asegúrese de que esta casa exista en sus registros y que existan registros coincidentes en Barrios (Neighborhood)*/

SELECT n_name AS nombre_barrio,city as Ciudad FROM neighborhood  right join house ON house.n_id = neighborhood.n_id where h_name = 'Las consultas'

