<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Tecnoflex.netlify.app </title>
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="./css/style-giusti.css">
        <link rel="icon" type="image/jpg" href="./imgs/favicon.ico" />
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/8add605683.js" crossorigin="anonymous"></script>

<meta charset="ISO-8859-1">


</head>
<body>
<header> 
          <nav class="navbar navbar-expand-lg" style="background-color: #ff6341;">
            <div class="container-fluid">
                <img src="./imgs/favicon.ico" style="width: 60px; background:white;border-radius:4px;" alt="">
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link  fs-4 text-black links" aria-current="page" href="#">Home</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link active fs-4 text-black links" aria-current="page" href="./pages/miCuenta.html" target="_blank">Mi cuenta</a>
                      </li>
                        <li class="nav-item">
                            <a class="nav-link fs-4 text-black links" href="">Nosotros</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link fs-4 text-black links" href="login.jsp">Iniciar Sesion</a>
                        </li>  
                        <li class="nav-item">
                            <a class="nav-link fs-4 text-black links" href="registro.jsp">Registrarse</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link fs-4 text-black links" href="Logout">Logout</a>
                        </li>                   
                    </ul>
                    <form class="d-flex">
                    <input class="form-control me-2" type="search" placeholder="" aria-label="Search">
                    <button class="btn btn-light k text-black" type="submit">Buscar</button>
                    </form>
                    <a class="cc" href="./pages/carrito.html"><i class="fas fa-shopping-cart"></i></a>
                </div>
            </div>
          </nav>
        </header>    <!--aqui termina el header-->
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
                crossorigin="anonymous">
              </script>
          <script src="./js/index.js"></script>
</body>
</html>