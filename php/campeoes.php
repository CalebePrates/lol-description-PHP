<link rel="stylesheet" type="text/css" href="css/campeoes.css">

<?php

	$con = mysqli_connect("localhost", "root", "","info3c");

	$searchChamps = mysqli_query($con,"SELECT * FROM campeoes");

	if (!$searchChamps) {
    printf("Error: %s\n", mysqli_error($con));
    exit();
}

	while($arrayChamps = mysqli_fetch_array($searchChamps,MYSQLI_ASSOC)){

		$nome = $arrayChamps["nome"];
		$foto = $arrayChamps["foto"];

		echo '<div class="champ">
			<div class="img-champ">
				<center><img class="image-champ" src="ftChamps/'.$foto.'"></center>
			</div>
			<div class="name-champ">
				<center><a class="a-name" href="php/campeao.php?nome='.$nome.'">'.ucfirst($nome).'</a></center>
			</div>
		</div>';

	}
?>
