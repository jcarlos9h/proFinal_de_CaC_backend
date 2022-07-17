<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
		<title>Mi cuenta Tecnoflex</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/style-giusti.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="icon" type="image/jpg" href="imgs/favicon.ico" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/8add605683.js" crossorigin="anonymous"></script>
		<meta charset="ISO-8859-1">                                             
                                                    
</head>                                                                 
<body>     
	<header> 
         <nav class="navbar navbar-expand-lg" style="background-color: #ff6341;">
           <div class="container-fluid ">
               <img src="imgs/favicon.ico" style="width: 60px; background:white;border-radius:4px;" alt="">
               <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                   <span class="navbar-toggler-icon"></span>
               </button>
               <div class="collapse navbar-collapse " id="navbarSupportedContent">
                   <a class="nav-link active fs-4 text-black links me-5" aria-current="page" href="misDatosPersonales.jsp" style="text-decoration: none"> Usuario -> <%=session.getAttribute("name") %> </a>
                   <ul class="navbar-nav ms-auto mb-2 mb-lg-0 " >
							<li class="nav-item">
                         	
                     		<a hidden name="idUsuario"> <%= session.getAttribute("id") %>= ></a>
                     	</li>
                       <li class="nav-item">
	                       <a class="nav-link active fs-4 text-black links m-" href="index.jsp">Inicio</a>
                    	</li>
                    	<li>
                    		<a class="nav-link active fs-4 text-black links" type="button"  onclick = "editarDatos()" >Editar perfil</a>
                    	</li>
                    	<li>
                    		<a class="nav-link active fs-4 text-black links" type="button"  onclick="cambiarStatusForm()" >Eliminar Cuenta</a>
                    	</li>
                    	<li class="nav-item">
	                        <a class="nav-link active fs-4 text-black links" aria-current="page" href="salir" >Salir</a>
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

      	<section>   	 
          <div class="container">
	          <div class="row ">
		          <div   class=  "col " >
		          	<ul class="list-group" class="col  col-xs-4 col-lg-4 " id="datosPersonalesparaOcultar"  >
			              <li class="list-group-item">Nombre y apellido</li>
			              <li class="list-group-item disabled" aria-disabled="true"><%= session.getAttribute("name") %></li>
			              <li class="list-group-item">email</li>
			              <li class="list-group-item disabled" aria-disabled="true"><%= session.getAttribute("email") %></li>
			              <li class="list-group-item">Teléfono</li>
			              <li class="list-group-item disabled" aria-disabled="true"><%= session.getAttribute("telefono")%></li>
			              <li class="list-group-item">Direccion</li>
			              <li class="list-group-item disabled" aria-disabled="true"><%= session.getAttribute("direccion")%></li>
		             </ul>
		          </div >
		          	 <div class="col col-xs-12 col-lg-10 "  >
		          		<form hidden  method="post" action="eliminar" id="formEliminar" style="background-color: white;" class="p-5" >
		          			<h1>¿Por favor Complete una pequeña encuesta para mejorar nuestos servicios?</h1>
		          			
					        <label for="preg1"class="d-flex">1.) Por que desea eliminar su cuenta?</label>
					        <input type="text" class="" placeholder="Ingrese un comentario" id="preg1">
					        <br>
					        
					        <label for="preg2"class="d-flex">2.) Que le gustaria que mejoraramos?</label>
					        <input type="text" class="" placeholder="Ingrese un comentario"id="preg2">
					        <br>
					        
					        <label for="preg3"class="d-flex">3.) Recomendaria nuestra aplicacion?</label>
					        <input type="text"class="" placeholder="Ingrese un comentario" id="preg3">
					        <br>
					        
					        <label for="emailEliminar"class="d-flex">4.) Email para Suspender Notificacion?</label>
					        <input type="text"class="" placeholder="Ingresar E-mail" name="emailEliminar" id="emailEliminar">
					        <br><br>
					        
					        <input type="submit" value="Enviar" class="p-2 m-2 bg-primary">
					        
					        <a href="misDatosPersonales.jsp" type="button" value="Cancelar"class="p-2 m-2 bg-danger ">Cancelar</a>
			        	</form>
	          		</div>
	          		
	          		
	          </div>
	          <div class="row">
	          		<div class="col d-flex justify-content-center">
	          			<div class="col col-xs-12 col-lg-12 "  >
		          		<form hidden  method="post" action="actualizar" style="background-color: white;" class="p-5  " id="datosPers">
		          			<h1>Por favor Ingrese los datos que desea Actualizar</h1>
		          			
					        <label for="preg1" class="d-flex">Nombre completo</label>
					        <input type="text" required="required" name="nombreActualizar" placeholder="Ingrese el nuevo nombre" id="preg1">
					        <br>
					        
					        <label for="preg2" class="d-flex">E-mail</label>
					        <input type="email" required="required" name="emailActualizar" placeholder="Ingrese el E-mail actualizado"id="preg2">
					        <br>
					        
					        <label for="preg3" class="d-flex">Contraseña</label>
					        <input type="password" required="required" name="passActualizar" placeholder="Ingrese la nueva contraseña" id="preg3">
					        <br>
					        <label for="preg4"class="d-flex">Telefono</label>
					        <input type="text"class=""  name ="telefonoActualizar" placeholder="Ingrese su numero telefonico" id="preg4" placeholder="Ingrese el nuevo telefono">
					        <br>
					        <label for="preg5"class="d-flex">Direccion</label>
					        <input type="text"class=""  name="direccionActualizar" placeholder="Ingrese la nueva direccion" id="preg5" placeholder="Ingrese la nueva direccion">
					        
					        
					        <br><br>
					        
					        <input type="submit" value="Enviar" class="p-2 m-2 bg-primary">
					        
					        <a href="misDatosPersonales.jsp" type="button" value="Cancelar"class="p-2 m-2 bg-danger ">Cancelar</a>
			        	</form>
	          		</div>
	          		</div>
	          
	          </div>
            
          </div>
        </section>
        
        
                                                
                                                                        
<footer><%@include file= "footer.jsp" %></footer>   

<script type="text/javascript">
function cambiarStatusForm() {
	
    var form = document.getElementById("formEliminar");
    console.log(form);
    form.removeAttribute("hidden");
    
    var dpo = document.getElementById("datosPersonalesparaOcultar");
    dpo.setAttribute("hidden","hidden");
}

function editarDatos(){
	var datosPers = document.getElementById("datosPers");
    datosPers.removeAttribute("hidden");
    
    var dpo = document.getElementById("datosPersonalesparaOcultar");
    dpo.setAttribute("hidden","hidden");
}
	
</script>    
                
</body>                                                                 
</html>    