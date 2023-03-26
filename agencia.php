<?php 
    include("conexion.php");
    $con=conectar();

    $sql="SELECT *  FROM vehiculo";
    $query=mysqli_query($con,$sql);

    $row=mysqli_fetch_array($query);
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title> Pagina Autos </title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/style.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        
    </head>
    <body>
            <div class="container mt-5">
                    <div class="row"> 
                        
                        <div class="col-md-3">
                            <h1>Ingrese datos</h1>
                                <form action="insertar.php" method="POST">

                                    <input type="text" class="form-control mb-3" name="Num_Serie" placeholder="Numero de serie">
                                    <input type="text" class="form-control mb-3" name="Marca" placeholder="Marca">
                                    <input type="text" class="form-control mb-3" name="Modelo" placeholder="Modelo">
                                    <input type="text" class="form-control mb-3" name="Color" placeholder="Color">
                                    <input type="text" class="form-control mb-3" name="Precio" placeholder="Precio">

                                    <input type="submit" class="btn btn-primary">
                                </form>
                        </div>

                        <div class="col-md-8">
                            <table class="table" >
                                <thead class="table-success table-striped" >
                                    <tr>
                                        <th>Num_Serie</th>
                                        <th>Marca</th>
                                        <th>Modelo</th>
                                        <th>Color</th>
					<th>Precio</th>
                                        <th></th>
                                        <th></th>
                                    </tr>
                                </thead>

                                <tbody>
                                        <?php
                                            while($row=mysqli_fetch_array($query)){
                                        ?>
                                            <tr>
                                                <th><?php  echo $row['Num_Serie']?></th>
                                                <th><?php  echo $row['Marca']?></th>
                                                <th><?php  echo $row['Modelo']?></th>
                                                <th><?php  echo $row['Color']?></th>
						<th><?php  echo $row['Precio']?></th>
                                                <th><a href="actualizar.php?id=<?php echo $row['Num_Serie'] ?>" class="btn btn-info">Editar</a></th>
                                                <th><a href="delete.php?id=<?php echo $row['Num_Serie'] ?>" class="btn btn-danger">Eliminar</a></th>                                        
                                            </tr>
                                        <?php 
                                            }
                                        ?>
                                </tbody>
                            </table>
                        </div>
                    </div>  
            </div>
    </body>
</html>
