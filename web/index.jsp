<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html lang="es">
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>SITA</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <link href="http://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="http://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  <style>
  body {
      font: 400 15px Lato, sans-serif;
      line-height: 1.8;
      color: #818181;
  }
  h2 {
      font-size: 24px;
      text-transform: uppercase;
      color: #303030;
      font-weight: 600;
      margin-bottom: 30px;
  }
  h4 {
      font-size: 19px;
      line-height: 1.375em;
      color: #303030;
      font-weight: 400;
      margin-bottom: 30px;
  }  
  .jumbotron {
      background-color: #1DCEF6;
      color: #fff;
      padding: 100px 25px;
      font-family: Montserrat, sans-serif;
  }
  .container-fluid {
      padding: 60px 50px;
  }
  .bg-grey {
      background-color: #f6f6f6;
  }
  .logo-small {
      color: #1DCEF6;
      font-size: 50px;
  }
  .logo {
      color: #1DCEF6;
      font-size: 200px;
  }
  .thumbnail {
      padding: 0 0 15px 0;
      border: none;
      border-radius: 0;
  }
  .thumbnail img {
      width: 100%;
      height: 100%;
      margin-bottom: 10px;
  }
  .carousel-control.right, .carousel-control.left {
      background-image: none;
      color: #1DCEF6;
  }
  .carousel-indicators li {
      border-color: #1DCEF6;
  }
  .carousel-indicators li.active {
      background-color: #1DCEF6;
  }
  .item h4 {
      font-size: 19px;
      line-height: 1.375em;
      font-weight: 400;
      font-style: italic;
      margin: 70px 0;
  }
  .item span {
      font-style: normal;
  }
  .panel {
      border: 1px solid #1DCEF6; 
      border-radius:0 !important;
      transition: box-shadow 0.5s;
  }
  .panel:hover {
      box-shadow: 5px 0px 40px rgba(0,0,0, .2);
  }
  .panel-footer .btn:hover {
      border: 1px solid #1DCEF6;
      background-color: #fff !important;
      color: #1DCEF6;
  }
  .panel-heading {
      color: #fff !important;
      background-color: #1DCEF6 !important;
      padding: 25px;
      border-bottom: 1px solid transparent;
      border-top-left-radius: 0px;
      border-top-right-radius: 0px;
      border-bottom-left-radius: 0px;
      border-bottom-right-radius: 0px;
  }
  .panel-footer {
      background-color: white !important;
  }
  .panel-footer h3 {
      font-size: 32px;
  }
  .panel-footer h4 {
      color: #aaa;
      font-size: 14px;
  }
  .panel-footer .btn {
      margin: 15px 0;
      background-color: #1DCEF6;
      color: #fff;
  }
  .navbar {
      margin-bottom: 0;
      background-color: #1DCEF6;
      z-index: 9999;
      border: 0;
      font-size: 12px !important;
      line-height: 1.42857143 !important;
      letter-spacing: 4px;
      border-radius: 0;
      font-family: Montserrat, sans-serif;
  }
  .navbar li a, .navbar .navbar-brand {
      color: #fff !important;
  }
  .navbar-nav li a:hover, .navbar-nav li.active a {
      color: #1DCEF6 !important;
      background-color: #fff !important;
  }
  .navbar-default .navbar-toggle {
      border-color: transparent;
      color: #fff !important;
  }
  footer .glyphicon {
      font-size: 20px;
      margin-bottom: 20px;
      color: #1DCEF6;
  }
  .slideanim {visibility:hidden;}
  .slide {
      animation-name: slide;
      -webkit-animation-name: slide;	
      animation-duration: 1s;	
      -webkit-animation-duration: 1s;
      visibility: visible;			
  }
  @keyframes slide {
    0% {
      opacity: 0;
      -webkit-transform: translateY(70%);
    } 
    100% {
      opacity: 1;
      -webkit-transform: translateY(0%);
    }	
  }
  @-webkit-keyframes slide {
    0% {
      opacity: 0;
      -webkit-transform: translateY(70%);
    } 
    100% {
      opacity: 1;
      -webkit-transform: translateY(0%);
    }
  }
  @media screen and (max-width: 768px) {
    .col-sm-4 {
      text-align: center;
      margin: 25px 0;
    }
    .btn-lg {
        width: 100%;
        margin-bottom: 35px;
    }
  }
  @media screen and (max-width: 480px) {
    .logo {
        font-size: 150px;
    }
  }
  </style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#myPage">Logo</a>
      <!--<a class="navbar-brand" href="#myPage"><img src="logoSita.png" alt="Logo" width="50" height="80"></a>-->
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#about">ACERCA DE</a></li>
        <li><a href="#services">SERVICIOS</a></li>
        <li><a href="#portfolio">HIGHLIGHTS</a></li>
        <li><a href="#pricing">PRECIOS</a></li>
        <li><a href="#contact">CONTÁCTO</a></li>
        <%
            String user = (String)session.getAttribute("username");
            String acc = (String)session.getAttribute("acc");
            if(user==null&&acc==null){
                out.println("<li><a href=\"#login\">LOGIN</a></li>");
            }else{
                out.println("<li><a href=\"#login\">"+user+"</a></li>");
            }
        %>
        <!--<li><a href="#login">LOGIN</a></li>-->
      </ul>
    </div>
  </div>
</nav>

<div class="jumbotron text-center">
  <h1>SITA</h1> 
  <p>SISTEMA INTELIGENTE DE ATENCIÓN A PACIENTES</p> 
  <form class="form-inline">
    <input type="email" class="form-control" size="50" placeholder="Correo electronico" required>
    <button type="button" class="btn btn-danger">Solicitar información</button>
  </form>
</div>

<!-- Container (About Section) -->
<div id="about" class="container-fluid">
  <div class="row">
    <div class="col-sm-8">
      <h2>Acerca de nuestro sistema</h2><br>
      <h4>SITA es una nueva manera de llevar la administración de sus pacientes que le permitirá cambiar por completo su concepto sobre la asignación de citas, el seguimiento a pacientes y la gestión de los mismos.</h4><br>
      <p><center>Tanto si su consultorio es pequeño o si administra un gran hospital SITA se adaptará a sus necesidades y las de sus pacientes. Desde el registro inicial de sus pacientes podrán agendar sus citas el día y la hora que más les convengan, el sistema las mantendrá organizadas. Deje de preocuparse por el control, SITA llevará la administración de sus pacientes, médicos, citas, consultas y al permitir la interacción  de los pacientes se generará un ambiente de integración.</center></p>
      <br><button class="btn btn-default btn-lg" onclick="location.href='#contact';">Ponerse en contacto</button>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-signal logo"></span>
    </div>
  </div>
</div>

<div class="container-fluid bg-grey">
  <div class="row">
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-globe logo slideanim"></span>
    </div>
    <div class="col-sm-8">
      <h2>NUESTROS VALORES</h2><br>
      <p>Responsabilidad</p>
      <p>Compromiso</p>
      <p></p>
      <h4><strong>MISIÓN:</strong> Nuestra misión.</h4><br>
      <p><strong>VISIÓN:</strong> Nuestra vision.</p>
    </div>
  </div>
</div>

<!-- Container (Services Section) -->
<div id="services" class="container-fluid text-center">
  <h2>SERVICIOS</h2>
  <h4>Lo que ofrecemos</h4>
  <br>
  <div class="row slideanim">
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-off logo-small"></span>
      <h4>PODER</h4>
      <p>Controle su información en todo momento y desde cualquier lugar.</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-heart logo-small"></span>
      <h4>INTERACCIÓN</h4>
      <p>Acérquese a sus pacientes y mantenga un contacto permanente con ellos.</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-lock logo-small"></span>
      <h4>CALIDAD</h4>
      <p>Realice sus operaciones con la confianza en la calidad y seguridad de nuestro sistema.</p>
    </div>
  </div>
  <br><br>
  <div class="row slideanim">
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-leaf logo-small"></span>
      <h4>ECO</h4>
      <p>Deshágase del papel y las agendas, ayudenos a salvar el planeta.</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-certificate logo-small"></span>
      <h4>CERTIFICADOS</h4>
      <p>Contamos con las certificaciones mas importantes y exigentes de la industria.</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-wrench logo-small"></span>
      <h4 style="color:#303030;">TRABAJO DURO</h4>
      <p>Nuestro equipo estará siempre disponible para ayudarlo, trabajamos día y noche para su beneficio.</p>
    </div>
  </div>
</div>

<!-- Container (Portfolio Section) -->
<div id="portfolio" class="container-fluid text-center bg-grey">
  <h2>Highlights</h2><br>
  <h4>Lo que hemos creado para usted:</h4>
  <div class="row text-center slideanim">
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="imagenes/citas.jpg" alt="Citas" width="400" height="300">
        <p><strong>Citas</strong></p>
        <p>Deje que sus pacientes elijan.</p>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="imagenes/consultas.jpg" alt="Consultas" width="400" height="300">
        <p><strong>Consultas</strong></p>
        <p>Lleve un control total en tiempo real.</p>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="imagenes/pacientes.jpg" alt="Pacientes" width="400" height="300">
        <p><strong>Pacientes</strong></p>
        <p>Toda la información a su disponibilidad.</p>
      </div>
    </div>
  </div><br>
  
  <h2>Lo que nuestros clientes opinan:</h2>
  <div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <h4>"Este sistema es increíble, nuestros pacientes lo adoran"<br><span style="font-style:normal;">Miguel Hernández, Gastrointerólogo, Hospital San Pedro</span></h4>
      </div>
      <div class="item">
        <h4>"Simplemente genial"<br><span style="font-style:normal;">Alberto Jaso, Administrador general, Clínica Lomas High</span></h4>
      </div>
      <div class="item">
        <h4>"No podría estar más satisfecho con este servicio<br><span style="font-style:normal;">Carlos Fuentes, Dentista, Clínica DentiPlus</span></h4>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Anterior</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Siguiente</span>
    </a>
  </div>
</div>

<!-- Container (Pricing Section) -->
<div id="pricing" class="container-fluid">
  <div class="text-center">
    <h2>Precios</h2>
    <h4>Elija el plan que más le convenga o contáctenos para armar uno a su medida.</h4>
  </div>
  <div class="row slideanim">
    <div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1>Básico</h1>
        </div>
        <div class="panel-body">
          <p><strong>1</strong> Médico</p>
          <p><strong>500</strong> Pacientes</p>
          <p><strong>1</strong> Ubicación</p>
          <p><strong>1GB</strong> Almacenamiento</p>
          <p><strong>Ilimitadas</strong> Consultas</p>
        </div>
        <div class="panel-footer plan">
          <h3>$85</h3>
          <h4>mensuales</h4>
          <button class="btn btn-lg">Pedir</button>
        </div>
      </div>      
    </div>     
    <div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1>Premium</h1>
        </div>
        <div class="panel-body">
          <p><strong>5</strong> Médicos</p>
          <p><strong>2500</strong> Pacientes</p>
          <p><strong>1</strong> Ubicación</p>
          <p><strong>3GB</strong> Almacenamiento</p>
          <p><strong>Ilimitadas</strong> Consultas</p>
        </div>
        <div class="panel-footer plan">
          <h3>$109</h3>
          <h4>mensuales</h4>
          <button class="btn btn-lg">Pedir</button>
        </div>
      </div>      
    </div>       
    <div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1>Total</h1>
        </div>
        <div class="panel-body">
          <p><strong>20</strong> Médicos</p>
          <p><strong>Ilimitados</strong> Pacientes</p>
          <p><strong>3</strong> Ubicación</p>
          <p><strong>Ilimitado</strong> Almacenamiento</p>
          <p><strong>Ilimitadas</strong> Consultas</p>
        </div>
        <div class="panel-footer plan">
          <h3>$169</h3>
          <h4>mensuales</h4>
          <button class="btn btn-lg">Pedir</button>
        </div>
      </div>      
    </div>    
  </div>
</div>

<!-- Container (Contact Section) -->
<div id="contact" class="container-fluid bg-grey">
  <h2 class="text-center">CONTÁCTO</h2>
  <div class="row">
    <div class="col-sm-5">
      <p>Póngase en contacto con nosotros y le responderemos en las próximas 24 horas.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span> México, DF</p>
      <p><span class="glyphicon glyphicon-phone"></span> +52 5585647042</p>
      <p><span class="glyphicon glyphicon-envelope"></span> sita@nazeer.com</p>	   
    </div>
    <div class="col-sm-7 slideanim">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="name" placeholder="Nombre" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div>
      </div>
      <textarea class="form-control" id="comments" name="comments" placeholder="Comentarios" rows="5"></textarea><br>
      <div class="row">
        <div class="col-sm-12 form-group">
          <button class="btn btn-default pull-right" type="submit">Enviar</button>
        </div>
      </div>	
    </div>
  </div>
</div>

<div id="googleMap" style="height:400px;width:100%;"></div>

<br>
<br>
<!-- SECCION LOGIN -->
<div id="login" class="container-fluid">
    
    <%
            if(user==null&&acc==null){
                out.println("<h2 class=\"text-center\">Inicio de Sesión");
            }else{
                out.println("<h2 class=\"text-center\">Cerrar Sesión</h2>");
                out.println("    <center>");
                out.println("<button type=\"button\" class=\"btn btn-danger\">Cerrar Sesión</button>");
                out.println("</h2>");
                out.println("    </center>");
            }
    %>
    
   <h2 class="text-center"></h2>
    <center>
    <s:form action="/Login">
    <div class="col-sm-7 slideanim">
      <div class="row">
        <div class="col-sm-6 form-group">
          < s:textfield placeHolder="Usuario" name="username" label="Username"/>
          < s:password placeHolder="Contraseña" name="password" label="Password" />
        </div>
      </div>
      <div class="row">
        <div class="col-sm-12 form-group">
          < s:submit value="Accesar"/>
        </div>
      </div>	
    </div>
    </s:form>
    </center>
</div>

<!-- Add Google Maps -->
<script src="http://maps.googleapis.com/maps/api/js"></script>
<script>
var myCenter = new google.maps.LatLng(19.50419, -99.1487605);

function initialize() {
var mapProp = {
  center:myCenter,
  zoom:15,
  scrollwheel:false,
  draggable:false,
  mapTypeId:google.maps.MapTypeId.ROADMAP
  };

var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);

var marker = new google.maps.Marker({
  position:myCenter,
  });

marker.setMap(map);
}

google.maps.event.addDomListener(window, 'load', initialize);
</script>

<footer class="container-fluid text-center">
  <a href="#myPage" title="To Top">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>
  <p>SITA</p>		
</footer>

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
    }, 900, function(){
   
      // Add hash (#) to URL when done scrolling (default click behavior)
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

</body>
</html>
        
