document.addEventListener("DOMContentLoaded", function () {
    document.getElementById("limpiarBtn").addEventListener("click", function () {
        var radioButtons = document.querySelectorAll('input[type="radio"]');
        radioButtons.forEach(function (radioButton) {
            radioButton.checked = false;
        });
    });
});


document.addEventListener("DOMContentLoaded", function () {
    document.getElementById("calculateColorBtn").addEventListener("click", function () {
		let integrityColumnNumber = 5;
		let availabilityColumnNumber = 6;
        let confidencialityColumnNumber = 7;
		let columnNumber = 8; // Número de la columna a calcular
		let noColumnNumber = 9; // Número de la columna a calcular
		let naColumnNumber = 10; // Número de la columna a calcular
        let rows = document.querySelectorAll('table tr:not(:first-child)'); // Obtener todas las filas excepto la primera
		
		//Variables semáforo grande
        let totalRadioButtons = 0;
        let yesCheckedRadioButtons = 0;
		let naCheckedRadioButtons = 0;
		
		//Variables semáforo confidenciality
		let confTotalRadioButtons = 0;
        let confYesCheckedRadioButtons = 0;
		let confNaCheckedRadioButtons = 0;
		
		//Variables semáforo availability
		let avTotalRadioButtons = 0;
        let avYesCheckedRadioButtons = 0;
		let avNaCheckedRadioButtons = 0;
		
		//Variables semáforo integrity
		let intTotalRadioButtons = 0;
        let intYesCheckedRadioButtons = 0;
		let intNaCheckedRadioButtons = 0;
		
        rows.forEach(function (row) {
			//SEMÁFORO GRANDE
            let yesRadioButtons = row.querySelectorAll(`td:nth-child(${columnNumber}) input[type="radio"]`);

            let selectedRadioButton = Array.from(yesRadioButtons).find(radioButton => radioButton.checked);
            if (selectedRadioButton && selectedRadioButton.value === 'si') {
                yesCheckedRadioButtons++;
				totalRadioButtons ++; // Mover esta línea aquí
            }
			
			let naRadioButtons = row.querySelectorAll(`td:nth-child(${naColumnNumber}) input[type="radio"]`);
			let naSelectedRadioButton = Array.from(naRadioButtons).find(radioButton => radioButton.checked);	
            if (naSelectedRadioButton && naSelectedRadioButton.value === 'na') {
                naCheckedRadioButtons++;
				totalRadioButtons ++; // Mover esta línea aquí
            }
			
			let noRadioButtons = row.querySelectorAll(`td:nth-child(${noColumnNumber}) input[type="radio"]`);
			let noSelectedRadioButton = Array.from(noRadioButtons).find(radioButton => radioButton.checked);	
            if (noSelectedRadioButton && noSelectedRadioButton.value === 'no') {
				totalRadioButtons ++; // Mover esta línea aquí
            }
			
			
			//SEMÁFORO CONFIDENCIALITY
			
			 let confSelect= row.querySelector(`td:nth-child(${confidencialityColumnNumber}) `);

			if (confSelect) { // Asegúrate de que haya un elemento <select> en la celda
				let confValue = confSelect.textContent;        
				if (confValue !== '0') {
				let confYesRadioButtons = row.querySelectorAll(`td:nth-child(${columnNumber}) input[type="radio"]`);

				let confSelectedRadioButton = Array.from(confYesRadioButtons).find(radioButton => radioButton.checked);
				if (confSelectedRadioButton && confSelectedRadioButton.value === 'si') {
					confYesCheckedRadioButtons++;
					confTotalRadioButtons ++; // Mover esta línea aquí
				}
				
				let confNaRadioButtons = row.querySelectorAll(`td:nth-child(${naColumnNumber}) input[type="radio"]`);
				let confNaSelectedRadioButton = Array.from(confNaRadioButtons).find(radioButton => radioButton.checked);	
				if (confNaSelectedRadioButton && confNaSelectedRadioButton.value === 'na') {
					confNaCheckedRadioButtons++;
					confTotalRadioButtons ++; // Mover esta línea aquí
				}
				
				let confNoRadioButtons = row.querySelectorAll(`td:nth-child(${noColumnNumber}) input[type="radio"]`);
				let confNoSelectedRadioButton = Array.from(confNoRadioButtons).find(radioButton => radioButton.checked);	
				if (confNoSelectedRadioButton && confNoSelectedRadioButton.value === 'no') {
					confTotalRadioButtons ++; // Mover esta línea aquí
				}
			}}
			
			//SEMÁFORO INTEGRITY
			
			 let intSelect= row.querySelector(`td:nth-child(${integrityColumnNumber}) `);

			if (intSelect) { // Asegúrate de que haya un elemento <select> en la celda
				let intValue = intSelect.textContent;        
				if (intValue !== '0') {
				let intYesRadioButtons = row.querySelectorAll(`td:nth-child(${columnNumber}) input[type="radio"]`);

				let intSelectedRadioButton = Array.from(intYesRadioButtons).find(radioButton => radioButton.checked);
				if (intSelectedRadioButton && intSelectedRadioButton.value === 'si') {
					intYesCheckedRadioButtons++;
					intTotalRadioButtons ++; // Mover esta línea aquí
				}
				
				let intNaRadioButtons = row.querySelectorAll(`td:nth-child(${naColumnNumber}) input[type="radio"]`);
				let intNaSelectedRadioButton = Array.from(intNaRadioButtons).find(radioButton => radioButton.checked);	
				if (intNaSelectedRadioButton && intNaSelectedRadioButton.value === 'na') {
					intNaCheckedRadioButtons++;
					intTotalRadioButtons ++; // Mover esta línea aquí
				}
				
				let intNoRadioButtons = row.querySelectorAll(`td:nth-child(${noColumnNumber}) input[type="radio"]`);
				let intNoSelectedRadioButton = Array.from(intNoRadioButtons).find(radioButton => radioButton.checked);	
				if (intNoSelectedRadioButton && intNoSelectedRadioButton.value === 'no') {
					intTotalRadioButtons ++; // Mover esta línea aquí
				}
			}}
			
			//SEMÁFORO AVAILABILITY
			
			 let avSelect= row.querySelector(`td:nth-child(${availabilityColumnNumber}) `);

			if (avSelect) { // Asegúrate de que haya un elemento <select> en la celda
				let avValue = avSelect.textContent;        
				if (avValue !== '0') {
				let avYesRadioButtons = row.querySelectorAll(`td:nth-child(${columnNumber}) input[type="radio"]`);

				let avSelectedRadioButton = Array.from(avYesRadioButtons).find(radioButton => radioButton.checked);
				if (avSelectedRadioButton && avSelectedRadioButton.value === 'si') {
					avYesCheckedRadioButtons++;
					avTotalRadioButtons ++; // Mover esta línea aquí
				}
				
				let avNaRadioButtons = row.querySelectorAll(`td:nth-child(${naColumnNumber}) input[type="radio"]`);
				let avNaSelectedRadioButton = Array.from(avNaRadioButtons).find(radioButton => radioButton.checked);	
				if (avNaSelectedRadioButton && avNaSelectedRadioButton.value === 'na') {
					avNaCheckedRadioButtons++;
					avTotalRadioButtons ++; // Mover esta línea aquí
				}
				
				let avNoRadioButtons = row.querySelectorAll(`td:nth-child(${noColumnNumber}) input[type="radio"]`);
				let avNoSelectedRadioButton = Array.from(avNoRadioButtons).find(radioButton => radioButton.checked);	
				if (avNoSelectedRadioButton && avNoSelectedRadioButton.value === 'no') {
					avTotalRadioButtons ++; // Mover esta línea aquí
				}
			}}
        });

		//SEMÁFORO GRANDE
        let percentage = totalRadioButtons > 0 ? (yesCheckedRadioButtons / (totalRadioButtons-naCheckedRadioButtons)) * 100 : 0;
        let color = 'red';

        if (percentage >= 60) {
            color = 'green';
        } else if (percentage >= 30) {
            color = 'yellow';
        } else {
            color = 'red';
        }

        console.log("Color:", color);

        setImageByColor(color,"defaultImage");
		
		//SEMÁFORO CONFIDENCIALITY
		
		let confPercentage = confTotalRadioButtons > 0 ? (confYesCheckedRadioButtons / (confTotalRadioButtons-confNaCheckedRadioButtons)) * 100 : 0;
        let confColor = 'red';

        if (confPercentage >= 60) {
            confColor = 'green';
        } else if (confPercentage >= 30) {
            confColor = 'yellow';
        } else {
            confColor = 'red';
        }

        console.log("Color:", confColor);

        setImageByColor(confColor,"defaultImage1");
		
		//SEMÁFORO INTEGRITY
		
		let intPercentage = intTotalRadioButtons > 0 ? (intYesCheckedRadioButtons / (intTotalRadioButtons-intNaCheckedRadioButtons)) * 100 : 0;
        let intColor = 'red';

        if (intPercentage >= 60) {
            intColor = 'green';
        } else if (intPercentage >= 30) {
            intColor = 'yellow';
        } else {
            intColor = 'red';
        }

        console.log("Color:", intColor);

        setImageByColor(intColor,"defaultImage3");
		
		//SEMÁFORO AVAILABILITY
		
		let avPercentage = avTotalRadioButtons > 0 ? (avYesCheckedRadioButtons / (avTotalRadioButtons-avNaCheckedRadioButtons)) * 100 : 0;
        let avColor = 'red';

        if (avPercentage >= 60) {
            avColor = 'green';
        } else if (avPercentage >= 30) {
            avColor = 'yellow';
        } else {
            avColor = 'red';
        }

        console.log("Color:", avColor);

        setImageByColor(avColor,"defaultImage2");
		
    });
});
function setImageByColor(color,imageId) {
    let imageName = "";

    if (color === 'green') {
        imageName = "FeVerde.jpg";
    } else if (color === 'yellow') {
        imageName = "FeAmarillo.jpg";
    } else {
        imageName = "FeRojo.jpg";
    }

    let imgElement = document.getElementById(imageId);
    imgElement.src = imageName;
    imgElement.alt = "Imagen " + imageName;
}



//SE INICIALIZA EL CANVA
var myCanvas = document.getElementById("myCanvas");
myCanvas.width = 300;
myCanvas.height = 300;

var ctx = myCanvas.getContext("2d");

//SE DIBUJA LOS ELEMENTOS DEL CANVA
function drawLine(ctx, startX, startY, endX, endY, color) {
    //ctx: referencia al contexto de dibujo
    //startX: la coordenada X del punto de inicio de la línea
    //startY: la coordenada Y del punto de inicio de la línea
    //endX: la coordenada X del punto final de la línea
    //endY: la coordenada Y del punto final de la línea
    //color: el color de la línea
    ctx.save();
    ctx.strokeStyle = color;
    ctx.beginPath();
    ctx.moveTo(startX, startY);
    ctx.lineTo(endX, endY);
    ctx.stroke();
    ctx.restore();
}

//SE DIBUJA LA BARRA 
function drawBar(ctx, upperLeftCornerX, upperLeftCornerY, width, height, color) {
    //ctx: referencia al contexto de dibujo
    //upperLeftCornerX: la coordenada X de la esquina superior izquierda de la barra
    //upperLeftCornerY: la coordenada Y de la esquina superior izquierda de la barra
    //width: el ancho de la barra
    //height: la altura de la barra
    //color:  el color de la barra
    ctx.save();
    ctx.fillStyle = color;
    ctx.fillRect(upperLeftCornerX, upperLeftCornerY, width, height);
    ctx.restore();
}

//DATOS DEL GRAFICO DE BARRAS
var myVinyls = {
    "Integridad": 10,
    "Disponibilidad": 14,
    "Confidencialidad": 5,

};

//IMPLEMTACION COMPLEMENTO PARA EL DIBUJO DE LAS GRAFICAS
var Barchart = function (options) {
    this.options = options;
    this.canvas = options.canvas;
    this.ctx = this.canvas.getContext("2d");
    this.colors = options.colors;

    this.draw = function () {
        var maxValue = 0;
        for (var categ in this.options.data) {
            maxValue = Math.max(maxValue, this.options.data[categ]);
        }
        var canvasActualHeight = this.canvas.height - this.options.padding * 2;
        var canvasActualWidth = this.canvas.width - this.options.padding * 2;
        //drawing the grid lines 
        var gridValue = 0;
        while (gridValue <= maxValue) {
            var gridY = canvasActualHeight * (1 - gridValue / maxValue) + this.options.padding;
            drawLine(
                this.ctx,
                0,
                gridY,
                this.canvas.width,
                gridY,
                this.options.gridColor
            );

            //writing grid markers 
            this.ctx.save();
            this.ctx.fillStyle = this.options.gridColor;
            this.ctx.font = "bold 10px Arial";
            this.ctx.fillText(gridValue, 10, gridY - 2);
            this.ctx.restore();
            gridValue += this.options.gridScale;
        }

        //drawing the bars 
        var barIndex = 0;
        var numberOfBars = Object.keys(this.options.data).length;
        var barSize = (canvasActualWidth) / numberOfBars;
        for (categ in this.options.data) {
            var val = this.options.data[categ];
            var barHeight = Math.round(canvasActualHeight * val / maxValue);
            drawBar(
                this.ctx,
                this.options.padding + barIndex * barSize,
                this.canvas.height - barHeight - this.options.padding,
                barSize,
                barHeight,
                this.colors[barIndex % this.colors.length]
            );
            this.ctx.save();
            this.ctx.textBaseline = "bottom";
            this.ctx.textAlign = "center";
            this.ctx.fillStyle = "#000000";
            this.ctx.font = "bold 12px Arial";
            this.ctx.fillText(val, this.options.padding + (barIndex + 0.5) * barSize, this.canvas.height - barHeight - this.options.padding - 5);
            this.ctx.restore();
            barIndex++;
        }
        //drawing series name 
        this.ctx.save();
        this.ctx.textBaseline = "bottom";
        this.ctx.textAlign = "center";
        this.ctx.fillStyle = "#000000";
        this.ctx.font = "bold 14px Arial";
        this.ctx.fillText(this.options.seriesName, this.canvas.width / 2, this.canvas.height);
        this.ctx.restore();

        //draw legend 
        barIndex = 0;
        var legend = document.querySelector("legend[for='myCanvas']");
        var ul = document.createElement("ul");
        legend.append(ul);
        for (categ in this.options.data) {
            var li = document.createElement("li");
            li.style.listStyle = "none";
            li.style.borderLeft = "20px solid " + this.colors[barIndex % this.colors.length];
            li.style.padding = "5px";
            li.textContent = categ;
            ul.append(li);
            barIndex++;
        }
    }
}

var myBarchart = new Barchart(
    {
        canvas: myCanvas,
        seriesName: "",
        padding: 20,
        gridScale: 5,
        gridColor: "#eeeeee",
        data: myVinyls,
        colors: ["#ECEC08", "#23C606", "#8D1B02"]
    }
);
myBarchart.draw();