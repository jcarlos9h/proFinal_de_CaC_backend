<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	 <!-- IMPORT NAVBAR mediante directiva de jsp-->
	
	  <header><%@include file= "header.jsp" %></header>
	
	
	  <!-- REGISTRO -->
 		
 	  <div id="form" class="container p-5 d-flex justify-content-center align-items-center" style="margin-top:80px;">
        	<div>
        		<h1 class="text-center fs-2 fw-bold"> REGISTRO </h1>
                <form method="post" action="registro" class="row g-12 border border-secondary border-2 rounded p-4">
                
                    <section class="mt-2">
                         <div class="col-md-12 mb-2">
                            <label for="NameSesion" class="form-label m-1" style="width: 150px;">Nombre</label>
                            <input type="text" class="form-control" name="NameRegistro" id="NameRegistro">
                        </div>
                        <div class="col-md-12 mb-2">
                            <label for="EmailSesion" class="form-label m-1" style="width: 150px;">Email</label>
                            <input type="email" class="form-control" name="EmailRegistro" id="EmailRegistro">
                        </div>
                        <div class="col-md-12 mb-2">
                            <label for="PasswordSesion" class="form-label m-1" style="width: 150px;">Contraseña</label>
                            <input type="password" class="form-control" name="passwordRegistro" id="passwordRegistro">
                        </div>
                        <div class="col-md-12 mb-1">
                            <label for="PasswordSesion" class="form-label m-1" style="width: 150px;">Repetir Contraseña</label>
                            <input type="password" class="form-control" id="passwordSesion">
                        </div>
                                            
                        <div class="d-flex justify-content-center">
                            <div class="col-14 mb-2"><br>
                                <input type="submit" style="width:100px ;" class="btn btn-primary btn-sm" value="Registrarse">
                                <a class="btn btn-danger btn-sm m-2" style="width:100px ;" href="index.jsp" role="button">Salir</a>
                            </div>
                        </div>
                    </section>
                </form>
            </div>
      </div>

	 <footer><%@include file= "footer.jsp" %></footer>

</body>
</html>