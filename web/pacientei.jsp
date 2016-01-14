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
      <a class="navbar-brand" href="index.jsp">Logo</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="pacientei.jsp">INICIO</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="jumbotron text-center">
  <h1>SITA</h1> 
  <p>Sistema inteligente de citas médicas</p> 

</div>

<!-- Container (About Section) -->
<div id="about" class="container-fluid">
  <div class="row">
    <div class="col-sm-8">
      <%@ page import="java.sql.*" %>
      <jsp:useBean id="manejador" scope="session" class="paquete.DB"></jsp:useBean>  
      <%  String user = (String)session.getAttribute("username"); %>
      <h2>Bienvenido <%out.println(user);%></h2><br>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-signal logo"></span>
    </div>
      <div>
        <%
            String rol = "";
            int nivel = 1;
            ResultSet rs=null;
            ResultSet rs2 = null;
            manejador.setConnection("com.mysql.jdbc.Driver","jdbc:mysql://localhost:3306/sita");
            
            rs=manejador.executeQuery("SELECT id_usu FROM usuarios WHERE nom_usu='"+user+"'");
            rs.next();
            int idu = rs.getInt("usuarios.id_usu");
            
            rs2=manejador.executeQuery("SELECT * FROM citas WHERE estado=0 and id_usu='"+idu+"'");
            
            out.println("<h2>Proximas citas:</h2>");
            out.println("<table class=\"table table-striped table-bordered table-responsive\">");
            out.println("<thead>");
            out.println("<tr>");
            out.println("<th>Día</th>");
            out.println("<th>Hora</th>");
            out.println("<th>Médico</th>");
            out.println("</tr>");
            out.println("</thead>");
            out.println("<tbody>");
            
            while(rs2.next()){
                int idmed = rs2.getInt("citas.id_med");
                ResultSet rs3=null;
                rs3=manejador.executeQuery("SELECT nom_med, ap_med FROM medicos WHERE id_med="+idmed+"");
                rs3.next();
                out.println("<tr>");
                out.println("<th>"+rs2.getString("citas.fecha")+"</th>");
                out.println("<th>"+rs2.getString("citas.hora")+"</th>");
                out.println("<th>"+rs3.getString("medicos.nom_med")+" "+rs3.getString("medicos.ap_med")+"</th>");
                out.println("</tr>");
                
            }
            
            out.println("</tbody>");
            out.println("</table>");

        %>
      </div>
  </div>
      <h2>Solicitar una consulta</h2>
      <div id="consulta">
          <%
            ResultSet rs4=null;
            manejador.setConnection("com.mysql.jdbc.Driver","jdbc:mysql://localhost:3306/sita");
            
            rs4=manejador.executeQuery("SELECT id_med, nom_med, ap_med, Esp_med FROM medicos");
            
            out.println("<h4>Médicos disponibles:</h4>");
            out.println("<table class=\"table table-striped table-bordered table-responsive\">");
            out.println("<thead>");
            out.println("<tr>");
            out.println("<th>Nombre</th>");
            out.println("<th>Especialidad</th>");
            out.println("<th>Acciones</th>");
            out.println("</tr>");
            out.println("</thead>");
            out.println("<tbody>");
            
            while(rs4.next()){;
                out.println("<tr>");
                out.println("<th>"+rs4.getString("medicos.nom_med")+" "+rs4.getString("medicos.ap_med")+"</th>");
                out.println("<th>"+rs4.getString("medicos.Esp_med")+"</th>");
                out.println("<th>");
                out.println(" <a href='cita_medica.jsp?id="+idu+"&idm="+rs4.getString("medicos.id_med")+"'>Hacer cita</a>");
                out.println("</th>");
                out.println("</tr>");
                
            }
            
            out.println("</tbody>");
            out.println("</table>");

        %>
      </div>    
</div>

<footer class="container-fluid text-center">
  <a href="#myPage" title="To Top">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>
  <p>SITA</p>		
</footer>


</body>
</html>
