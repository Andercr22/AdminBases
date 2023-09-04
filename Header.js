// Obtener el enlace (link) por su ID
const monitoreoLink = document.getElementById("monitoreoLink");

// Bandera para controlar si el enlace está deshabilitado
let linkDeshabilitado = false;

// Función para deshabilitar el enlace y evitar la navegación
function deshabilitarLink(event) {
    if (linkDeshabilitado) {
        event.preventDefault(); // Evitar la navegación
        alert("Este enlace está deshabilitado temporalmente."); // Puedes mostrar un mensaje opcional
    } else {
        linkDeshabilitado = true;
    }
}

// Agregar un event listener al enlace para llamar a la función de deshabilitar
monitoreoLink.addEventListener("click", deshabilitarLink);
