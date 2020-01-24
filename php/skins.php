<link rel="stylesheet" type="text/css" href="css/skins.css">
<script type="text/javascript" src="js/skins.js"></script>

<div class="tds-skins">
<?php

	$con = mysqli_connect("localhost", "root", "","info3c");

	$searchChamps = mysqli_query($con,"SELECT * FROM skins") or die(mysql_query());

	while($arrayChamps = mysqli_fetch_array($searchChamps)){

		$preco = $arrayChamps["preco"];
		$imagem = $arrayChamps["imagem"];
		$nome = utf8_decode($arrayChamps["nome"]);
		$id = $arrayChamps["id"];

		echo '<div class="skins" id="'.$id.'">
				<div class="img-skin" id="'.$id.'">
					<center><img class="image-skin" src="skins/'.$imagem.'"></center>
					<div class="name-skin">
						<center><span class="span-name">'.ucfirst($nome).'</span></center>
					</div>
				</div>

				<div class="price-skin" style="display:none;">
					<span>'.$preco.'</span>
				</div>
			  </div>';

	}
?>
</div>
