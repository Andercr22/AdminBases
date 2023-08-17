document.addEventListener("DOMContentLoaded", function() {
    document.getElementById("limpiarBtn").addEventListener("click", function() {
        var radioButtons = document.querySelectorAll('input[type="radio"]');
        radioButtons.forEach(function(radioButton) {
            radioButton.checked = false;
        });
    });
});

document.addEventListener("DOMContentLoaded", function() {
    document.getElementById("calculateColorBtn").addEventListener("click", function() {
        let columnNumber = 4; // Número de la columna a calcular
        let rows = document.querySelectorAll('table tr:not(:first-child)'); // Obtener todas las filas excepto la primera

        let totalRadioButtons = 0;
        let checkedRadioButtons = 0;

        rows.forEach(function(row) {
            let radioButtons = row.querySelectorAll(`td:nth-child(${columnNumber}) input[type="radio"]`);

            let selectedRadioButton = Array.from(radioButtons).find(radioButton => radioButton.checked);
            if (selectedRadioButton && selectedRadioButton.value === 'si') {
                checkedRadioButtons++;
            }

            totalRadioButtons += radioButtons.length; // Mover esta línea aquí
        });

        let percentage = totalRadioButtons > 0 ? (checkedRadioButtons / totalRadioButtons) * 100 : 0;
        let color = 'red';

        if (percentage >= 60) {
            color = 'green';
        } else if (percentage >= 30) {
            color = 'yellow';
        } else {
            color = 'red';
        }

        console.log("Color:", color);

        setImageByColor(color);
    });
});
function setImageByColor(color) {
    let imageName = "";

    if (color === 'green') {
        imageName = "FeVerde.jpg";
    } else if (color === 'yellow') {
        imageName = "FeAmarillo.jpg";
    } else {
        imageName = "FeRojo.jpg";
    }

    let imgElement = document.getElementById("defaultImage");
    imgElement.src = imageName;
    imgElement.alt = "Imagen " + imageName;
}


