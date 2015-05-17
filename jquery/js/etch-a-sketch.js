var gridDefault = 16;
var maxGrid = 64;

$(document).ready(function(){
	drawGrid(gridDefault);
	


});


function drawGrid(gridSize){
	$('#grid').empty();
	$('#grid').append('<table class="gridTable"></table>')
	grid = $('.gridTable');
	for (var i = 0; i < gridSize; i++) {
		grid.append("<tr>")

		row = $("tr").last();

		for (var j = 0; j < gridSize; j++) {

			row.append('<td><div class="gridSquare"></div></td>');
		};
		grid.append("</tr>");

	};

	var squareSize = Math.floor($('#grid').width() / gridSize) - 2;
	$('.gridSquare').height(squareSize);
	$('.gridSquare').width(squareSize);

	$('.gridSquare').hover(function(){
		$(this).css('opacity', "+=0.1");
	})

};

function newGrid(){
	var validInput = false;
	var gridSize = gridDefault;
	while(!validInput){
		gridSize = window.prompt("What size grid do you want? [1-64]", gridDefault);
		if (!isNaN(gridSize) && gridSize > 0 && gridSize <= maxGrid){
			gridSize = Math.floor(gridSize);
			validInput = true;
		}else if (isNaN(gridSize)){
			window.alert("That is not a valid number");
		}else{
			window.alert("Please select a value between 1 and 64.");
		};

	};
	drawGrid(gridSize);
	

};