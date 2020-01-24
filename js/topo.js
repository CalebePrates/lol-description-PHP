$(document).ready(function(){

	$('.icon-lupa img').click(function(){

		$('.search-champ').animate({width: "toggle"}, 400);

	});

	$('.search-champ').blur(function(){
		$('.search-champ').animate({width: "toggle"}, 400);
		$('.result-champs').slideUp();
	});

	$('.search-champ').keyup(function(){

		var nomeChamp = $(this).val();

			$('.result-champs').html("");

			$.ajax({

				url: "ajax/procuracampeao.php",
				type: "POST",
				data: {nome: nomeChamp},
				success:function(champs){

					if(champs == "Erro"){
						alert("Erro ao procura por campeao");
					}
					else{

						$('.result-champs').html(champs).slideDown();

					}

				}

			});

	});

	$('#select-champ').click(function(){

		$('.loader-divs').html("");

		$('.loader-divs').load("php/campeoes.php");

	});

	$('#select-skin').click(function(){

		$('.loader-divs').html("");

		$('.loader-divs').load("php/skins.php");

	});

	$('#select-item').click(function(){

		$('.loader-divs').html("");

		$('.loader-divs').load('php/itens.php');

	});

});
