<?php

if(isset($_POST)){

	$con = mysqli_connect("localhost", "root", "","info3c");

	$nome = utf8_encode($_POST["nome"]);

	$procura = mysqli_query($con,"SELECT * FROM campeoes WHERE nome LIKE '%$nome'") or die(mysql_error());

	while($champs = mysqli_fetch_array($procura,MYSQLI_ASSOC)){

		$nomeC = utf8_decode($champs["nome"]);
		$imagemC = $champs["foto"];

		echo '<a href="php/campeao.php?nome='.$nomeC.'"><img src="ftChamps/'.$imagemC.'"><span>'.ucfirst($nomeC).'</span></a>';

	}

	mysqli_close($con);

}
else{
	die("Erro");
}

?>
