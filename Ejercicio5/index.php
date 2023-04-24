<?php
    include "conexion.inc.php";
    echo "<h1> ROL DIRECTOR</h1>";
    $con = mysqli_connect("localhost","director","123456");
    mysqli_select_db($con,"mibasericardo");
    $sql = "
        select 
        case cod_departamento when '01' then 'Chuquisaca'
			  when '02' then 'La Paz'
	 	      when '03' then 'Cochabamba'
      		  when '04' then 'Oruro'
     		  when '05' then 'Potosi'
      		  when '06' then 'Tarija'
      		  when '07' then 'Santa Cruz'
              when '08' then 'Beni'
              when '09' then 'Pando'
        else 'otro'
        end as Departamento,
        (select avg(nota_final) from inscripcion where ci = ci_estudiante group by nota_final) as Promedio
        from persona
        group by cod_departamento
        order by cod_departamento
    ";
    $resultado = mysqli_query($con,$sql);
?>
<table border = "5px">
    <tr>
        <td>Departamento</td>
        <td>Promedio</td>
    </tr>
<?php
    while($fila=mysqli_fetch_array($resultado)){
         echo "<tr>";
            echo "<td>".$fila['Departamento']."</td>";
            echo "<td>".$fila['Promedio']."</td>";
        echo "</tr>";
    }
?>
</table>