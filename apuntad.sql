-- Dame el total de inscritos en todas las competiciones de este año.
select count(*) from inscripcion as i
inner join carrera as c on i.id_carrera = c.id
where c.fecha like '2023%';

-- Dame un listado con el porcentaje de ocupación de cada una de las carreras que existen en la base de datos.
select nombre as carrera, count(*)*100/capacidad as ocupacion from carrera as c
inner join inscripion as i on i.id_carrera = c.id
group by c.nombre;

-- Porcentaje de hombres y mujeres en cada carrera.

-- Porcentaje de hombres y mujeres en todas las carreras, por año.

-- Dame un listado de todas las carreras que tienen más de 100 inscritos.
select c.nombre as carrera, count(*) as inscritos from carrera as c
inner join inscripcion as i on i.id_carrera = c.id
group by c.nombre
having count(*) > 100;

