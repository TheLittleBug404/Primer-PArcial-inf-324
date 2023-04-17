<?php session_start();

    if(isset($_SESSION['usuario']))
        header('Location: mostrar_contenido.php');
    else
        header('Location: login.php');


?>