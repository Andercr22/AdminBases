// Si deseas agregar dinamismo para cambiar el ancho de las barras de progreso:
const bars = document.querySelectorAll('.progress-bar');

bars.forEach(bar => {
  const width = bar.style.width;
  bar.style.width = '0';

  setTimeout(() => {
    bar.style.width = width;
  }, 500); // Cambia este valor para ajustar la velocidad de animación
});
