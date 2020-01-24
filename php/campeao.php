<?php

$con = mysqli_connect("localhost", "root", "","info3c");

$name = $_GET["nome"];
$search_champ = mysqli_query($con,"SELECT * FROM campeoes WHERE nome = '$name'");
$array_champ = mysqli_fetch_array($search_champ,MYSQLI_ASSOC);
$ftperfil = $array_champ["foto"];

$preco = $array_champ["preco"];
$posicao = $array_champ["posicao"];
$icon_role = "";

if($posicao == "Jungle"){
	$posicao = "Caçador";
	$icon_role = "../icones/jgicon.png";
}
if($posicao == "ADC"){
	$posicao = "Atirador";
	$icon_role = "../icones/adcicon.png";
}
if($posicao == "suporte"){
	$icon_role = "../icones/supicon.png";
}
if($posicao == "mid"){
	$icon_role = "../icones/mageicon.png";
}
if($posicao == "top"){
	$icon_role = "../icones/topcion.png";
}

?>

<html>
<head>
	<title><?php echo ucfirst($name); ?></title>
	<link rel="icon" type="image/png" href="../ftChamps/<?php echo $ftperfil; ?>">
	<link rel="stylesheet" type="text/css" href="../css/campeao.css">
	<script type="text/javascript" src="../js/jquery.js"></script>
	<script type="text/javascript" src="../js/campeao.js"></script>
</head>
<body>

	<div class="mae">

		<div class="imagem-perfil">

			<div class="cabecalho-perfil">
				<center>
					<img src="../ftChamps/<?php echo $ftperfil; ?>">
					<h1>Nome: <?php echo ucfirst($name); ?></h1>
				</center>
			</div>

			<div class="dados-perfil">

				<div class="preco-rp">

					<center>
						<div class="icon-rp">
							<center><img src="../itens/rp.png"></center>
						</div>
						<span class="span-preco">Preço: <?php echo $preco; ?></span>
					</center>

				</div>

				<div class="posicao-null">

				</div>

				<div class="posicao">
					<center>
						<div class="icon-rp">
							<center><img src="../icones/<?php echo $icon_role; ?>"></center>
						</div>
						<span class="span-preco">Posição: <?php echo ucfirst($posicao); ?></span>
					</center>
				</div>

			</div>

		</div>

	</div>

</body>
</html>
