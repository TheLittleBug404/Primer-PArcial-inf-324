<?php session_start();

    if(isset($_SESSION['usuario']))
     header('Location: index.php');

    require 'conexion.php';

    //print_r($_POST);
    $errores="";
    if($_SERVER['REQUEST_METHOD']=='POST'){
        $user=$_POST['user'];
        $pass=$_POST['pass'];
        // $pass=hash('sha512',$pass);

        if(!empty($user)){
            $user=trim($user);
            $user=strip_tags($user);
            $user=htmlspecialchars($user);
            $user=filter_var($user,FILTER_SANITIZE_STRING);
        }
        else
            $errores.="<br>introduzca el campo Usuario";
        
        if(empty($pass))
            $errores.="<br>introduzca el campo Contrasena";
        

        if($errores==''){
            $comparar=$conexion->prepare("SELECT * FROM usuario WHERE usuario=:user and password=:pass");
            $comparar->execute(array(':user'=>$user,':pass'=>$pass));
            
            $resultado=$comparar->fetch();

            //print_r($resultado);
            if($resultado!=false){
                //global
                $_SESSION['usuario']=$user;
                header('Location: index.php');
            }
        }
    }


    require 'vistas/logueo_vista.php';


?>