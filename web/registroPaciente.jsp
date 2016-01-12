<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib  uri="/struts-tags" prefix="s"%>
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
                        <li><a href="index.jsp">INICIO</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        
        <div class="jumbotron text-center">
            <h1>SITA</h1> 
            <p>SISTEMA INTELIGENTE DE ATENCIÓN A PACIENTES</p>  
        </div>
        <!--FORMULARIO-->
        <h1>Registro de Pacientes</h1>
        <s:form action="/PAdd">
            <div class='form-group'>
                <s:textfield placeholder="Nombre(s)" name="nombre" label="Nombre" />
                <s:textfield placeholder="Apellido Paterno" name="app" label="Apellido Paterno" />
                <s:textfield placeholder="Apellido Materno" name="apm" label="Apellido Materno" />
                <s:textfield placeHolder="Sexo" name="sexo" label="Sexo" />
                <s:textfield placeholder="Fecha de Nacimiento" type="date" name="fechanac" />
                <s:textfield placeholder="Edad" name="edad" label="Edad" />
                <s:textfield placeholder="Correo Electrónico" name="email" label="Correo Electrónico" />
                <s:textfield placeholder="Teléfono: (xxx) - xxx xxxx" name="tel" label="Teléfono" />
                <s:textarea placeholder="Dirección" rows="3" name="dir" label="Dirección" />
                <s:textfield placeholder="Usuario" name="user" label="Usuario" />
                <s:textfield placeholder="Contraseña" name="pass" label="Contraseña" />
                <s:textfield placeholder="Fecha cita médica" type="datetime-local" name="fechacita" label="Fecha cita medica" />
                <s:textarea placeholder="Motivos específicos" rows="3" name="motivo" label="Motivos específicos" />
                <s:textarea placeholder="Especialidad" rows="3" name="espe" label="Especialidad" />
                <s:submit/>  
            </div>
        </s:form>
        <footer class="container-fluid text-center">
            <a href="#myPage" title="To Top">
                <span class="glyphicon glyphicon-chevron-up"></span>
            </a>
            <p>SITA</p>		
        </footer>
    </body>
</html>
