// Si deseas agregar dinamismo para cambiar el ancho de las barras de progreso:
const bars = document.querySelectorAll('.progress-bar');

bars.forEach(bar => {
  const width = bar.style.width;
  bar.style.width = '0';

  setTimeout(() => {
    bar.style.width = width;
  }, 500); // Cambia este valor para ajustar la velocidad de animación
});

const ctx = document.getElementById('myChart');

  new Chart(ctx, {
    type: 'bar',
    data: {
      labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
      datasets: [{
        label: '# of Votes',
        data: [12, 19, 3, 5, 2, 3],
        borderWidth: 1
      }]
    },
    options: {
      scales: {
        y: {
          beginAtZero: true
        }
      }
    }
  });