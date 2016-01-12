<?php
	//session_start();
	//$medico = $_SESSION["boleta"];
	include("mpdf60/mpdf.php");
	//BD
	$conexion = mysqli_connect("localhost", "root","","sita");
	
	
	
	
	
	
	
	//Llenado de datos
        
	
	
        $cedula=$_POST['cedula'];
	$usuarioN=$_POST['medico'];
        $hoy = date("Y-m-d");
	$usuarioN=$_POST['nombre'];
	$usuarioP=$_POST['apellidoP'];
	$usuarioM=$_POST['apellidoM'];
	$peso=$_POST['peso'];
	$altura=$_POST['altura'];
	$edad=$_POST['edad'];
	$numeroM=$_POST['numM'];
	$anotaciones=$_POST['anota'];
	$sql = "SELECT * FROM medicos WHERE Ced_med='$cedula'";
	$res = mysqli_query($conexion, $sql);
	$medico = mysqli_fetch_row($res);
	$sql = "SELECT * FROM consultorio WHERE id_consu =( SELECT id_consu FROM medicos WHERE Ced_med='$cedula')";
	$res = mysqli_query($conexion, $sql);
	$consultorio = mysqli_fetch_row($res);
	//inserta datos
	$sql = "SELECT * FROM usuarios WHERE nom_usu = '$usuarioN' AND apeM_usu = '$usuarioM' AND apeP_usu = '$usuarioP'";
	$res = mysqli_query($conexion, $sql);
	$usuario = mysqli_fetch_row($res);
        
        if($usuario==NULL)
	{
		header('Location: http://localhost:8080/SITA1/Receta.jsp');
	}	
	
	$sql = "INSERT INTO consultas VALUES (NULL,$usuario[0],'$hoy',400,'$anotaciones')";
	mysqli_query($conexion,$sql);
	
	
		
	for($i=0;$i<$numeroM;$i++)
			{
				$medicamento=$_POST['Medicamento'.$i];
				$hora=$_POST['hora'.$i];
				$dias=$_POST['dias'.$i];
				$numeroVecesM=$_POST['numeroVecesM'.$i];
				$final=$final.($i+1)."-  ".$medicamento." aplicar cada ".$hora." HRS durante ".$dias." dias por ".$numeroVecesM." veces al dia <br>";
				//inserta en medicamento
				$sql = "INSERT INTO medicamentos VALUES (NULL,$usuario[0],'$medicamento','$hora',$dias,$numeroVecesM,'$hoy')";
				mysqli_query($conexion,$sql);
			}
			
$recetados="
            <div class=medicamentos><label>$final</label><div>
            <br><br>
                    <div class=texto>Anotaciones extras: $anotaciones</div>
            <br><br><br><br>
             <center>
                    _________________________________<br>
                    <p>DR. $medico[3] $medico[4]</p>
             </center>
        ";

	$cuerpo = "
	<br>
		<div class=fecha> Fecha : <i>$hoy</i></div>
		<br>
		<div class=encabezado>
			<p>CED. PROF. $cedula</p>
			<div class=medico>DR. $medico[3] $medico[4] </div>
			<div class=escuela><br>$medico[11]<br></div>
		</div>
		<hr>
				<br><br>
				<div class=texto>
				<label >Nombre del paciente:  </label>
				<i><i><label >$usuarioN
				$usuarioP
				$usuarioM</label></i></i></div>
				<div class=fecha ><label >Edad : $edad a&ntilde;os</label>
				<label ><br>Peso : $peso Kg</label>
				<label ><br>Altura : $altura cm</label></div>
				
		<br><br>
        ";
	$pie="
		<div class=texto>
			<label>
				$consultorio[2] No. $consultorio[4]<br>
				Col. $consultorio[4] <br>
				Deleg. $consultorio[5] C.P $consultorio[3]<br>
				Ciudad $consultorio[7]<br> 
				Horario $consultorio[8] a $consultorio[9]<br>
				Telefono $consultorio[10] <br>
			</label>
		</div>
	";
	
	/*$encabezado = "
		<table width='100%'>
			
		</table>
	";*/
	
	$stylesheet = file_get_contents('css/estiloPDF.css');
	
	//$mpdf=new mPDF("","Letter",0,"",15,15,15,15,10,10,"L");
	$mpdf=new mPDF("utf-8","Letter-P");
	$mpdf->SetHTMLHeader($encabezado);
	$mpdf->SetHTMLFooter($pie);
	$mpdf->WriteHTML($stylesheet,1);
	$mpdf->WriteHTML($cuerpo);
	$mpdf->WriteHTML($recetados);
	//$mpdf->WriteHTML($pie);
	//$mpdf->AddPage('P','','','','',15,15,30,50,10,10);
	//$mpdf->WriteHTML("<p class='nuevo'>Hoy es 4 de diciembre de 2015 a</p>");
	$mpdf->Output();
	exit;
?>