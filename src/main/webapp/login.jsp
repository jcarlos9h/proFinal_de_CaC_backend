<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
<!--     <link rel="icon" type="image/jpg" href="/Proyecto-final-front/imgs/favicon.ico" /> -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Inicio de Secion</title>

</head>
<body>

<input type="hidden" id="status" value=" <%=request.getAttribute("status") %>">

 <header> 
        <nav class="navbar navbar-expand-lg "style="background-color: #ff6341;">
          <div class="container-fluid">
              <img src="imgs/favicon.ico" style="width: 60px;background-color: white;border-radius: 4px;" alt="">
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                  <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                      <a class="nav-link fs-4 text-black" href="../index.html">Sobre Nosotros</a>
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
    </header>  
    <main>
        <div class="container p-4 ">
            <img src="imgs/Logo.jpeg" class="img-fluid rounded mx-auto d-block m-2 p-auto" alt="IsoLogo" width="250">
    
            <h1 class="text-center fs-2 fw-bold">Inicio de Sesion</h1>
            <div id="form" class="d-flex justify-content-center">
            
                <form  method="post" action="login"  class="row g-12 border border-secondary border-2 rounded p-2">
                
                    <section class="mt-1">
                        
                        <div class="col-md-12 mb-1">
                            <label for="EmailSesion" class="form-label m-1" style="width: 150px;">Email</label>
                            <input type="email" name="usuarioEmail" class="form-control" id="EmailSesion">
                        </div>
                        <div class="col-md-12 mb-1">
                            <label for="PasswordSesion" class="form-label m-1" style="width: 150px;">Contrase�a</label>
                            <input type="password" name="usuarioPass" class="form-control" id="passwordSesion">
                        </div>
                        
                        <div class="d-flex justify-content-end"> 
                            <a href="#" for="" class="form-label">Olvidaste tu contrase�a?</a>
                          
                        </div>
                        <div class="d-flex justify-content-end"> 
                           
                          
                            <a href="registro.jsp" for="" class="form-label">Crear Cuenta</a>
                        </div>
                        
                    
                        <div class="d-flex justify-content-center">
                            <div class="col-14 mb-1"><br>
                                <button type="submit" value="Enviar" style="width:100px ;" class="btn btn-primary btn-sm">Ingresar</button>
                                <a class="btn btn-danger btn-sm m-1" style="width:100px ;" href="../index.html" role="button">Salir</a>
                            </div>
                        </div>
                    </section>
                </form>
            </div>
        </div>
    
    </main>
    
    <footer>
      <div class="footer">
        <div>
        <img class="imagentf" src="imgs/IMG-20220421-WA0060.jpg" alt="da�ada">
      </div>
      <!-- columnas del footer-->
      <div class="col-1">
        <h4>Quienes Somos</h4> 
          <p class="parrafo" id="qs" >Empresa dedicada a la venta de equipos informaticos,
            como celulares computadoras, accesorios, entre otros.</p>
        </div>
        <div class="elementos lista border-0">
          <h4>Servicios para TI</h4>
          <ol>
            <li>Ventas</li>
            <li>Reparaciones</li>
            <li>Anuncia con nosotros</li>
            <li>Promociones</li>
            <li>Descuentos</li>
          </ol>
        </div>
        <div class="elementos iconos" >
          <h4 id="contacto">Contacto</h4>
          <div class="col-3">
            <div>
              <i class="fa fa-phone"></i>
              <p  class="parrafo">1163090865</p>
            </div>
            <div>
              <i class="fa fa-envelope"></i>
              <p  class="parrafo">Tecnoflex@gmail.com</p>
            </div>
          </div>
        </div>
        <div class="elementos">
          <h4>Recibe Nuestras ofertas</h4>
          <form>				
            <input name="EMAIL" id="email" placeholder="Enter Your Email" class="form-control" type="email">
            <button class="boton" type="submit">suscribete</button>
          </form>
          <h4>SIGUENOS</h4>
          <div class="iconos">
          <a href="#" class="fa fa-facebook facebook"></a>
          <a href="#" class="fa fa-instagram instagram "></a>
          <a href="#" class="fa fa-twitter  twitter"></a>
          <a href="#" class="fa fa-youtube  youtube"></a>
          </div>
        </div>
      </div>
      <p id="tf">&copy; TECNO FLEX, 2022 All rights reserved</p>   

    </footer>

	<script type="text/javascript">
		var status = document.getElementById("status").value;
		if(status  == "failed"){
			alert("Lo siento email o contrase�a incorrecto");
		}
	</script>
   

</body>
</html>