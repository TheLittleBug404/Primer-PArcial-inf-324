<?php


    try {
        $conexion=new PDO('mysql:host=localhost;dbname=mibasericardo','root','');
    } catch (PDOException $th) {
        echo "ERROR DE CONEXION ";
    }

  

    

?>