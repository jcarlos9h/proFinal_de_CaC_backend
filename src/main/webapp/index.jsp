<%
	if(session.getAttribute("name")==null){
		response.sendRedirect("login.jsp");
	}
%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">                                             
<title>Home</title>                                                     
</head>                                                                 
<body>                                                                  
<header><%@include file= "header.jsp" %></header>                       
 <div id="carouselExampleControlsNoTouching" class="carousel slide" data-bs-touch="false" data-bs-interval="false">
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <img src="./imgs/img1.jpg" class="d-block w-100" alt="carouselDePublicidad">
                  </div>
                  <div class="carousel-item">
                    <img src="./imgs/img2.jpg" class="d-block w-100" alt="carouselDePublicidad">
                  </div>
                  <div class="carousel-item">
                    <img src="./imgs/img3.jpg" class="d-block w-100" alt="carouselDePublicidad">
                  </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControlsNoTouching" data-bs-slide="prev">
                  <span class="carousel-control-prev-icon p-3 mb-2 bg-transparent text-dark" aria-hidden="true"></span>
                  <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControlsNoTouching" data-bs-slide="next">
                  <span class="carousel-control-next-icon p-3 mb-2 bg-transparent text-dark" aria-hidden="true"></span>
                  <span class="visually-hidden">Next</span>
                </button>
              </div>
              
              <section class="metodoPago" >
                <div > 
                  <i><a href="pages/tdc.html" class="fas fa-credit-card metodo" ></a></i>
                  <h2>Tarjeta de Credito</h2>
                </div>
                <div>
                  <i><a href="pages/tdd.html" class="far fa-credit-card metodo"></a></i>
                  <h2>Tarjeta de Debito</h2>
                </div>
                <div>
                  <i><a href="pages/efectivo.html" class="fas fa-hand-holding-usd metodo"></a></i>
                  <h2>Efectivo</h2>
                </div>
                <div>
                  <i id="plus"><a href="pages/mas.html" class="fas fa-plus-square metodo" ></a></i>
                </div>
              </section>

              <div class="container">
                  <div class="row">
                    <h2 class="text-center">PRODUCTOS DESTACADOS</h2>
                    <div class="categorias col-xs-12 col-lg-3 my-5 ">
                      
                      <div class="subt"><h2>CATEGORIAS</h2></div>
                      <ul id="menu">
                          <li><a href="pages/categorias/c_pc.html" target="_blank">PC</a></li>
                          <li><a href="pages/categorias/celulares.html" target="_blank">Celulares</a></li>
                          <li><a href="pages/categorias/notebook.html" target="_blank">Notebook</a></li>
                          <li><a href="pages/categorias/accesorios.html" target="_blank">Accesorios</a></li>  
                          <li><a href="#">Marcas</a> 
                              <ul>
                                  <li> <a href=""> Samsung</a> </li>
                                  <li> <a href=""> Asus</a> </li>
                                  <li> <a href=""> Dell</a></li>
                                  <li> <a href=""> Iphone</a></li>
                              </ul>
                          </li> 
                      </ul>
                    </div>
                    <div class="cards col-xs-12 col-lg-9 my-5 ">
              

                  </div>
              </div>
                                                                        
                                                                        
                                                                        
                                                                        
<footer><%@include file= "footer.jsp" %></footer>  

<script src="js/index.js"></script>                     
</body>                                                                 
</html>                                                                 