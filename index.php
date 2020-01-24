<?php
	require_once "php/db.php";
?>

<!DOCTYPE html>
<html lang="pt-br" id='index'>
<head>
	<meta charset="utf-8">
	<link rel="icon" type="image/png" href="icones/icone.png">
	<title>Core Builds</title>
	<script type="text/javascript" src="js/jquery.js"></script>
	<link rel="stylesheet" type="text/css" href="css/index.css">

</head>
<body>

	<div class="topo">
		<?php require_once "php/topo.php"; //Importa a página do menu ?>
	</div>

	<div class="loader-divs">

		<?php require_once "php/campeoes.php"; //Importa a página de campeoes ?>

	</div>

	<div class="detalhes-skins">

		<div class="img-detail-skin">

			<img class="img-skin-show">

		</div>

		<div class="price-detail-skin">

		</div>

		<div class="name-detail-skin">

		</div>

	</div>

</body>
</html>
