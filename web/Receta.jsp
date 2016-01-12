<%-- 
    Document   : Receta
    Created on : 27/12/2015, 09:04:27 PM
    Author     : Alejandra
--%>

<%@ page import= "java.sql.*" %>
<%@ page import= "java.io.*" %>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html lang="es">
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>SITA</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <link href="http://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="http://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
 
  
  <link rel="stylesheet" href="css/estiloPDF.css" type="text/css" media="screen" />
  <link rel="stylesheet" href="css/estilo.css" type="text/css" media="screen"/>
  <script language="javascript" type="text/javascript" src="jquery-2.1.4.min.js"></script>
  <style>
  
  </style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
<div>
    
<%!	Connection conn= null;%>
    <%
    Statement stmt=null;
    ResultSet rs = null;
    Class.forName("com.mysql.jdbc.Driver").newInstance(); 
       conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sita","root","12345678");
        String query = "SELECT Ced_med, nom_med ,ap_med FROM medicos WHERE nom_med = 'Alejandra'"; 
       stmt = conn.createStatement();
       String cedula;
       rs = stmt.executeQuery(query); 
       while (rs.next())
        {
            cedula = rs.getString("Ced_med"); 
        
%>
</div>
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#myPage">Logo</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#about">ACERCA DE</a></li>
        <li><a href="#services">SERVICIOS</a></li>
        <li><a href="#portfolio">HIGHLIGHTS</a></li>
        <li><a href="#pricing">PRECIOS</a></li>
        <li><a href="#contact">CONTACTO</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="jumbotron text-center">
  <h1>SITA</h1> 
</div>

<!-- Formulario col-sm-5 !-->
<div id="contact" class="container-fluid">
  <h2 class="">Receta Medica</h2>
	<div class="fecha">
		<?php
			$hoy = date("Y-m-d");
			echo $hoy;
		?>
	</div>
  <h3>Realizacion de receta medica para pacientes</h3>
  <div class="forma">
    <br>
	<form class="receta" name="receta" action="http://localhost/sita/sita/web/RecetaPDF.php" method="post">
		
		<div class="">
		
			<label>Atendio : </label>
                        <input class="lineaTex" id="cedula"  value="<%out.println(cedula);}%>" disable="true" name="cedula" readonly="readonly"  type="text">
                        
                        <br>
				<label>Nombre :  </label><input onkeypress="ValidaSoloLetras()" class="lineaTex" id="nombre" name="nombre" placeholder="Nombre" type="text" required>
				<input class="lineaTex" onkeypress="ValidaSoloLetras()" id="apellidoP" name="apellidoP" placeholder="Apellido Paterno" type="text" required>
				<input class="lineaTex"  onkeypress="ValidaSoloLetras()" id="apellidoM" name="apellidoM" placeholder="Apellido Materno" type="text" required>
			
			<div class="fecha"> 
				<label>Edad :  </label> <input onkeypress="ValidaSoloNumeros()" class="lineaTex" id="edad" name="edad" size="2"  placeholder="" type="text"  required><label>años</label>
				<br>
				<label>Peso :  </label> <input onkeypress="ValidaSoloNumeros()" class="lineaTex" id="peso" name="peso" size="3" placeholder="" type="text" required><label>Kg</label>
				<br>
				<label>Altura :  </label><input onkeypress="ValidaSoloNumeros()" class="lineaTex" id="altura" size="3" name="altura" placeholder="" type="text" required><label>cm</label>
			</div>
			<br>
				<label>Numero de medicamentos : <input class="lineaTex" onkeypress="ValidaSoloNumeros()" size="1" id="numM" name="numM" onchange ="" type="text" required></label>
			
			<br>
			<div id="Respuesta"  align="center"></div>
			<blockquote><textarea class="anota" id="anota" name="anota" placeholder="Anotaciones extras "></textarea><br>
			</blockquote>
		 
			
			 <div class="boton"> <button  type="submit">Enviar</button></div>
			
		  	
		</div>
	</form>
   
	
  </div>
</div>




<script>
$(document).ready(function(){
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {

    // Prevent default anchor click behavior
    event.preventDefault();

    // Store hash
    var hash = this.hash;

    // Using jQuery's animate() method to add smooth page scroll
    // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
    $('html, body').animate({
      scrollTop: $(hash).offset().top
    }, 900, function()
	{
      window.location.hash = hash;
    });
  });
  
  // Slide in elements on scroll
  $(window).scroll(function() {
    $(".slideanim").each(function(){
      var pos = $(this).offset().top;

      var winTop = $(window).scrollTop();
        if (pos < winTop + 600) {
          $(this).addClass("slide");
        }
    });
  });
})
</script>

<script>
	var num;
	
	$(document).ready(function(e)
	{
		$("#numM").keyup(function(e){
			var inputs="";
			for(i=0;i<$("#numM").val();i++)
		{
			inputs=inputs+"<input class=lineaTex id=Medicamento"+i+" name=Medicamento"+i+" placeholder=Mediamento "+i+" type=text required><input class=lineaTex id=hora"+i+" name=hora"+i+" onkeypress=ValidaSoloNumeros() placeholder='Cada num de horas' type=text required><input class=lineaTex onkeypress=ValidaSoloNumeros() id=numeroVecesM"+i+" name=numeroVecesM"+i+" placeholder='Numero de veces al dia' type=text required><input class=lineaTex id=dias"+i+" onkeypress=ValidaSoloNumeros() name=dias"+i+" placeholder='Aplicar Durante' type=text required><br>";
		}
			$("#Respuesta").html(inputs);
		});
		
		
	});
	
</script>
<script>
	//Función que permite solo Números
	function ValidaSoloNumeros() {
	 if ((event.keyCode < 48) || (event.keyCode > 57)) 
	  event.returnValue = false;
	}
	function ValidaSoloLetras()
	{
		 if ((event.keyCode != 32) && (event.keyCode < 65) || (event.keyCode > 90) && (event.keyCode < 97) || (event.keyCode > 122))
		  event.returnValue = false;
	}
        
</script>

</body>
</html>
