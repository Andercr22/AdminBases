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
  
  function ajustarPorcentajes(parametro1, parametro2, parametro3) {
  // Asegurémonos de que los parámetros estén en el rango de 0 a 1000
  parametro1 = Math.min(1000, Math.max(0, parametro1));
  parametro2 = Math.min(1000, Math.max(0, parametro2));
  parametro3 = Math.min(1000, Math.max(0, parametro3));

 

  // Calculamos los porcentajes para cada clase
  const total = 1000;
  const porcentaje1 = (parametro1 / total) * 100;
  const porcentaje2 = (parametro2 / total) * 100;
  const porcentaje3 = (parametro3 / total) * 100;

 

  // Aplicamos los porcentajes a las clases
  document.querySelector('.b1').style.height = porcentaje1 + '%';
  document.querySelector('.b2').style.height = porcentaje2 + '%';
  document.querySelector('.b3').style.height = porcentaje3 + '%';
}
