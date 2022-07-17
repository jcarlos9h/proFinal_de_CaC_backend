
/*window.onload = function validarPass(){
  //Aquí el código

		let pass=document.getElementById("passwordRegistro").value;
		let repeatPass=document.getElementById("passwordSesion").value;
		
		if(pass!=repeatPass){
			alert("Las contraseñas deben ser iguales, verifique nuevamente");
			location.reload();
		}
	
}*/ 

/*const formulario= document.getElementById("form");
const listaUsuarios= new Array();


//Se dispara el evento al apretar el boton "enviar"
formulario.addEventListener('submit', (e) => {

e.preventDefault();

const nombre= document.getElementById("nombres").value;
const apellido= document.getElementById("Apellido/s").value;
const email= document.getElementById("inputEmail4").value;
const contraseña= document.getElementById("inputPassword4").value;


const usuario = [
    { emailUsuario: email, contraseñaUsuario: contraseña }
];


//Corroboramos si existe o no el usuario. 
if (listaUsuarios.includes(usuario[0].emailUsuario)){
            alert("Este usuario ya tiene una cuenta activa");
   }

//Si el usuario no existe, se guarda la informacion en LocalStorage y una alerta de registro exitoso.
else {

//Guarda en un array los nombres de usuario.
listaUsuarios.push((usuario[0].emailUsuario));


console.log("lista "+listaUsuarios)
        

//Guardamos los datos del usuario en localStorage
localStorage.setItem(`${email}`, JSON.stringify(usuario));
alert("Usuario registrado con exito!")

}


});



*/

  	var passUno = document.getElementById("passwordRegistro").value;
	 		
	var passDos = document.getElementById("passwordSesion").value;
	 		
	if(passUno!=passDos){
	 alert("Las contraseñas son diferentes intente nuevamente");
	 }else{
		alert("El registro fue realizado con exito");
	}


