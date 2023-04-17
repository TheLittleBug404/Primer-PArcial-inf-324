<?php session_start();

    //echo "cerrar";
    session_destroy();
    $_SESSION=array();
    header('Location: index.php');

?>