<link rel="stylesheet" type="text/css" href="css/style.css">

<div class="tds-itens">
<?php

	$con = mysqli_connect("localhost", "root", "","info3c");

	$searchChamps = mysqli_query($con,"SELECT * FROM itens") or die(mysql_query());

	while($arrayChamps = mysqli_fetch_array($searchChamps)){

		$preco = $arrayChamps["preco"];
		$imagem = $arrayChamps["imagem"];
		$nome = utf8_decode($arrayChamps["nome"]);
		$id = $arrayChamps["id"];
    $descricao = $arrayChamps["descricao"];

		echo '<div class="itens" id="'.$id.'">
				<div class="img-item" id="'.$id.'">
					<center><img class="image-item" src="Itens/'.$imagem.'"></center>
				</div>
        <div class="name-item">
          <center>Nome: <span class="span-name">'.ucfirst($nome).'</span></center>
        </div>
			<div class="price-item">
				<center>Preço: <span>'.$preco.'</span></center>
			</div>
        	<div class="conteudo">
        		<center>Descrição: <span>'.$descricao.'</span>
        	</div>
		</div>';

	}
?>
</div>
