<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registro</title>
</head>
<body>
	
	 <!-- IMPORT NAVBAR mediante directiva de jsp-->
	
	  <header> 
	          <nav class="navbar navbar-expand-lg" style="background-color: #ff6341;">
	            <div class="container-fluid ">
	                <img src="imgs/favicon.ico" style="width: 60px; background:white;border-radius:4px;" alt="">
	                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	                    <span class="navbar-toggler-icon"></span>
	                </button>
	                
	            </div>
	          </nav>
        </header> 
	
	
	  <!-- REGISTRO -->
 		
 	  <div id="form" class="container p-1 mb-5 d-flex justify-content-center align-items-center" style="margin-top:80px;">
        	<div>
        		<h1 class="text-center fs-2 fw-bold"> REGISTRO </h1>
                <form method="post" action="registro" class="row g-12 border border-secondary border-2 rounded p-4" id="formularioRegistro">
                
                    <section class="mt-2">
                         <div class="col-md-12 mb-2">
                            <label for="NameSesion" class="form-label m-1" style="width: 150px;">Nombre </label>
                            <input type="text" class="form-control" name="NameRegistro" id="NameRegistro" 
                            placeholder="Ingrese su nombre completo" required="required" >
                        </div>
                        <div class="col-md-12 mb-2">
                            <label for="EmailSesion" class="form-label m-1" style="width: 150px;">Email</label>
                            <input type="email" class="form-control" name="EmailRegistro" id="EmailRegistro" 
                            placeholder="ejemplo@ejemplo.com" required="required">
                        </div>
                        <div class="col-md-12 mb-1">
                            <label for="telefono" class="form-label m-1" style="width: 150px;">Telefono</label>
                            <input type="text" class="form-control" name="telefono" id="telefono" 
                            placeholder="+XX XXXXXXXXXX">
                        </div>
                        <div class="col-md-12 mb-1">
                            <label for="direccion" class="form-label m-1" style="width: 150px;">Direccion</label>
                            <input type="text" class="form-control" name="direccion" id="direccion"
                             placeholder="Ingrese su Direccion" >
                        </div>
                        <div class="col-md-12 mb-2">
                            <label for="PasswordSesion" class="form-label m-1" style="width: 150px;">Contraseña</label>
                            <input type="password" class="form-control" name="passwordRegistro" id="passwordRegistro" 
                            placeholder="Caracteres especiales (.,;:/(=?¿¡°|)" required="required">
                        </div>
                        <div class="col-md-12 mb-1">
                            <label for="PasswordSesion" class="form-label m-1" style="width: 150px;">Repetir Contraseña</label>
                            <input type="password" class="form-control" id="passwordSesion" 
                            placeholder="Deben coincidir las contraseñas" required="required">
                        </div>
                        
                        <a href="login.jsp " class=" d-flex justify-content-center">¿Ya tienes una Cuenta?</a>
                                            
                        <div class="d-flex justify-content-center">
                            <div class="col-14 mb-2"><br>
                                <input type="submit" style="width:100px ;" class="btn btn-primary btn-sm" 
                                value="Registrarse" onclick="validarPass();">
                                <a class="btn btn-danger btn-sm m-2" style="width:100px ;" href="index.jsp" role="button">Salir</a>
                            </div>
                        </div>
                    </section>
                </form>
            </div>
      </div>

	 <footer><%@include file= "footer.jsp" %></footer>
	 
	 <script src="js/index.js">
	 		
	 		
	 </script>
	 
	 
		
</body>
</html>