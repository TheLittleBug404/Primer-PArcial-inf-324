<?php session_start();
    if(!isset($_SESSION['usuario']))
        header('Location: index.php');

    require 'conexion.php';

    // $datos=$conexion->query("SELECT * FROM articulo");
    // //print_r($datos);
    // foreach($datos as $fila){
    //     print_r($fila);
    // }

    $datos=$conexion->prepare("SELECT * FROM usuario");
    $datos->execute();
    $resultados=$datos->fetchAll();
    //print_r($resultados);
    // foreach($resultados as $fila){
    //     echo $fila['titulo'];
    // }

    require 'vistas/mostrar_contenido_Vista.php';
?>