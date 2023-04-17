<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <title>Mostrar Contenido</title>


</head>
<body style="margin:15px;">
    <header>
        <div class="container">
            <div class="row" style="background-color: rgba(209, 221, 236, 0.3);color:steelblue;text-align:center;">
                <b>UMSA</b>
                <b>Realizado por Ricky</b>
            </div>
        </div>
        <div class="container" style=" margin:15px;text-align:right;">
            <b>"Bienvenido usuario <?php echo $_SESSION['usuario']?>"</b> 
            <a href="cerrar.php" class="btn btn-primary">Cerrar Sesion</a>
        </div>
    </header>
    <main>
        resultado
        <?php foreach($resultados as $fila): ?> 
            <div style="text-align:center;background-color: rgba(209, 221, 236, 0.3); border-radius: 10px 10px 10px 10px;padding:10px;">
            <h1><?php echo $fila['usuario']; ?></h1>
            <h1><?php echo $fila['password']; ?></h1>
        <?php endforeach; ?>
    </main>
    
</body>
</html>