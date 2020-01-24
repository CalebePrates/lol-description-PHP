<?php

	$con = mysqli_connect("localhost", "root", "","info3c");

	if(isset($_POST['cadastrar'])){

		$nome = $_POST['nome'];
		$preco = $_POST['preco'];
		$descricao = $_POST['descricao'];
		$foto = $_FILES['foto'];
		$nomeFoto = $foto["name"];
		$dir = "../Itens/";

		
                if ($nome == NULL or $preco==NULL or $descricao==NULL or $foto==NULL or $nomeFoto  == NULL) {
				echo "
				<script>
				
				alert('preencha todos os campos');
				</script>
				";
			}

			else{
				$insertItens = mysqli_query($con,"INSERT INTO itens(nome,preco,imagem,descricao) VALUES('$nome','$preco','$nomeFoto','$descricao')") or die(mysqli_error($con));

		if( move_uploaded_file($foto["tmp_name"],$dir.$nomeFoto) ){
			header("Location:administrativo.php");
		}
		else{
			print_r(error_get_last());
		
		}	
	}
	}
	else if(isset($_GET['deletar'])){

		$id = trim(explode("-",$_GET['deletar'])[1]);

		$dele = mysqli_query($con,"DELETE FROM itens WHERE id='$id'");

		if($dele){
			header("location:administrativo.php");
		}
		else{
			die(mysqli_error($con));
		}

	}
	else if(isset($_GET['editar'])){

		$result = mysqli_query($con,"SELECT * FROM itens WHERE nome = '".$_GET['nome']."' AND preco = '".$_GET['preco']."' AND descricao = '".$_GET['descricao']."'");

		if (mysqli_num_rows ($result) > 0) {
			?>
			<script type="text/javascript">alert('Digite novas informações para editar');</script>
			<?php
		}else{
			$id = trim(explode("-",$_GET['editar'])[1]);
			$edit = mysqli_query($con,"UPDATE itens SET nome = '".$_GET['nome']."', preco = '".$_GET['preco']."', descricao = '".$_GET['descricao']."' WHERE id = '$id'");
			if($edit){
				?>
				<script type="text/javascript">alert('Editado com sucesso');</script>
				<?php
			}
			else{
				die(mysqli_error($con));
			}
		}
	}

?>

<!DOCTYPE html>
<html style="width:100%;height:100%;">
	<head>
		<meta charset="utf-8">
		<title>ADMINISTRATIVO</title>
	</head>
	<style>*{box-sizing: border-box;padding: 0;margin:0;}</style>
	<body style="width:100%;height:100%;">

		<BR><center>	<a href=".."> VOLTAR PARA HOME </a> </center>

		<div style="width:33.3%;height:100%;border-right:1px solid #333;float:left; overflow-y:auto; padding:1%;">

			<center> <h1>ADICIONAR ITEM</h1> </center>

			<br>

			<form enctype="multipart/form-data" method="POST">

				<label for="nome">Nome:</label>
				<input type="text" id="nome" name="nome" value="" style="width:80%;" required><Br>

				<label for="preco">Preço:</label>
				<input type="number" id="preco" name="preco" value="" max="9999" style="width:80%;margin-left:.5%;" required><br>

				<label for="descricao">Descrição:</label>
				<textarea name="descricao" id="descricao" rows="8" cols="53" style="resize:none;" required></textarea><br><br>

				<label for="foto">Foto:</label>
				<input type="file" id="foto" name="foto" value="" required>
				

				<br><br><br>

				<center><input type="submit" name="cadastrar" value="Cadastrar um ITEM"></center>

			</form>

		</div>

		<div style="width:33.3%;height:100%;border-right:1px solid #333;float:left; overflow-y:auto;padding:1%;">

			<center> <h1> DELETAR ITEM </h1> </center>

			<?php

				$del = mysqli_query($con,"SELECT * FROM itens") or die(mysqli_error($con));

				if(mysqli_num_rows($del) > 0){

					while($data = mysqli_fetch_assoc($del)){

						$id = $data["id"];
						$nome = $data["nome"];

						echo '<form method="get">
								<label for="nome">Nome:</label>
								<input type="text" readonly value="'.$nome.'"disabled>
								<input type="submit" name="deletar" value="Deletar - '.$id.'">
							  </form>';

					}

				}
				else{
					echo "<center>Nenhum item cadastrado</center>";
				}

			?>

		</div>

		<div style="width:33.3%;height:100%;border-right:1px solid #333;float:left; overflow-y:auto;padding:1%;">

			<center> <h1>EDITAR ITEM</h1> </center>

			<br>

			<?php

				$edit = mysqli_query($con,"SELECT * FROM itens") or die(mysqli_error($con));

				while ($data = mysqli_fetch_assoc($edit)) {

					echo '<form enctype="multipart/form-data" method="GET">

							<label for="nome">Nome:</label>
							<input type="text" id="nome" name="nome" value="'.$data['nome'].'" style="width:80%;" required><br>

							<label for="preco">Preço:</label>
							<input type="number" id="preco" name="preco" value="'.$data['preco'].'" max="9999" style="width:80%;margin-left:.5%;" required><br>

							<label for="descricao">Descrição:</label>
							<textarea name="descricao" id="descricao" rows="8" cols="53" style="resize:none;" required>'.$data['descricao'].'</textarea>

							<br>

							<center><input type="submit" name="editar" value="Editar - '.$data["id"].'"></center>

							</form>';

				}

			?>

		</div>


	</body>
</html>
