index = 0;

$(document).ready(function() {
	
	$(document).keyup(function(e){
		if(e.which == 27){
			$('.detalhes-skins').hide({'width':'toggle'},2000);
			$('body').css({"overflow-y":"auto"});
		}
		
		if(e.which == 39){ //Ir para próxima skin

			if($('.detalhes-skins').is(':visible') == true){

				var imagem = $('.img-skin:eq('+(index+1)+') img').attr("src");
				var nome = $('.name-skin:eq('+(index+1)+') span').text();
				var preco = $('.price-skin:eq('+(index+1)+') span').text();
				index++;
				$('.img-skin-show').attr("src", imagem);
				$('.price-detail-skin').html("<center><img class='rp-icon' src='itens/rp.png'></center><p>"+preco+"</p>");
				$('.name-detail-skin').html("<p>"+nome+"</p>");


			}

		}

		if(e.which == 37){ //Ir para skin anterior

			if($('.detalhes-skins').is(':visible') == true){

				var imagem = $('.img-skin:eq('+(index-1)+') img').attr("src");
				var nome = $('.name-skin:eq('+(index-1)+') span').text();
				var preco = $('.price-skin:eq('+(index-1)+') span').text();
				index--;
				$('.img-skin-show').attr("src", imagem);
				$('.price-detail-skin').html("<center><img class='rp-icon' src='itens/rp.png'></center><p>"+preco+"</p>");
				$('.name-detail-skin').html("<p>"+nome+"</p>");

			}

		}

	});

	$('.skins').each(function() {
		
		$('.img-skin').click(function(){
			
			var scroll = $(document).scrollTop();
			index = $(this).index('.img-skin');
			var imagem = $('.img-skin:eq('+index+') img').attr("src");
			var nome = $('.name-skin:eq('+index+') span').text();
			var preco = $('.price-skin:eq('+index+') span').text();
			$('.img-skin-show').attr("src", imagem);
			$('.price-detail-skin').html("<center><img class='rp-icon' src='itens/rp.png'></center><p>"+preco+"</p>");
			$('.name-detail-skin').html("<p>"+nome+"</p>");
			$('body').css({"overflow-y":"hidden"});
			$('.detalhes-skins').css({"margin-top": scroll+"px"}).show({'width':'toggle'},2000);

		});

	});

	$('.detalhes-skins').click(function(){
		$(this).hide({'width':'toggle'},2000);
		$('body').css({"overflow-y":"auto"});
	});

});