/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    './app/**/*.{html,js,php}', // Asegúrate de que las rutas coincidan con tus archivos
  ],
  theme: {
    extend: {
      colors: {
        'yellow': '#FFD400',  // Amarillo principal: Utilizado para elementos destacados, como botones, íconos de llamada a la acción, o detalles que deben llamar la atención.
        'yellow-light': '#FFEB61',  // Amarillo suave: Ideal para fondos sutiles o para resaltar áreas de información secundaria, como notificaciones o textos de menor importancia.
        'yellow-dark': '#F9C400',  // Amarillo oscuro: Para resaltar títulos o botones importantes, o como color de contraste en elementos interactivos.

        'black': '#1A1A1A',  // Negro principal: Para texto principal, como títulos y párrafos, o para fondos oscuros donde el contraste es necesario.
        'dark-gray': '#4A4A49',  // Gris oscuro: Útil para texto secundario, bordes, o para fondos donde se quiere un contraste suave sin usar negro puro.
        'gray': '#D1D1D1',  // Gris claro: Para fondos suaves o elementos menos destacados, como tarjetas o secciones no primarias.
        'gray-light': '#F0F0F0',  // Gris muy claro: Ideal para fondos, áreas de contenido suaves, o para aplicar en formularios o cuadros de entrada.

        'white': '#FFFFFF',  // Blanco puro: Para fondos, textos en contraposición a fondos oscuros, o para crear un diseño limpio y simple.
        'off-white': '#F9F9F9',  // Blanco suave: Perfecto para fondos sutiles o elementos de contraste bajo donde el blanco puro puede ser demasiado brillante.

        'orange': '#FF6A13',  // Naranja principal: Para botones de acción, advertencias o alertas importantes, que deben captar la atención del usuario.
        'orange-light': '#FF8A40',  // Naranja claro: Para elementos menos destacados o como fondo suave para botones secundarios o mensajes.

        'green': '#28A745',  // Verde vibrante: Ideal para botones de confirmación, estados positivos, o acciones exitosas (como "Enviar" o "Guardar").
        'green-light': '#A3D8A0',  // Verde suave: Para áreas de confirmación suaves o para mensajes de éxito discretos.

        'blue': '#005D8F',  // Azul fuerte: Ideal para enlaces, botones o títulos que deben resaltar, pero de manera menos agresiva que el amarillo o el naranja.
        'blue-light': '#68A3D1',  // Azul claro: Usado para fondos suaves, elementos secundarios o detalles en iconos, botones o elementos de navegación.
        'blue-dark': '#003B59',  // Azul oscuro: Para elementos de fondo más oscuros, como barras de navegación o pie de página, o para un contraste suave con otros colores.

        'beige': '#F1E6C7',  // Beige suave: Útil para fondos, especialmente en secciones más cálidas, como blogs o contenido ligero.
        'beige-dark': '#C8B084',  // Beige oscuro: Ideal para elementos de fondo más cálidos o para destacar áreas específicas de contenido sin ser demasiado brillante.
      },
      fontFamily: {
        sans: ['Montserrat', 'Arial', 'sans-serif'], // Tipo sans-serif similar al de Vueling
      },
      spacing: {
        '72': '18rem',   // Espaciado personalizado (18rem)
        '84': '21rem',   // Espaciado más grande (21rem)
        '96': '24rem',   // Espaciado más grande (24rem)
      },
      borderRadius: {
        'sm': '0.125rem', // Bordes suaves
        'lg': '0.375rem', // Bordes medianamente redondeados
        'full': '9999px', // Bordes totalmente redondeados (para círculos)
      },
      boxShadow: {
        'default': '0 4px 6px rgba(0, 0, 0, 0.1)',  // Sombra básica
        'lg': '0 10px 15px rgba(0, 0, 0, 0.1)',      // Sombra más pronunciada
        'xl': '0 15px 30px rgba(0, 0, 0, 0.1)',      // Sombra extra grande
      },
      typography: {
        DEFAULT: {
          css: {
            color: '#4A4A49',  // Gris oscuro para texto
            a: {
              color: '#FFD400', // Enlaces en amarillo
              '&:hover': {
                color: '#FFB600', // Enlaces en hover (amarillo más oscuro)
              },
            },
            h1: {
              color: '#1A1A1A', // Títulos principales en negro
            },
            h2: {
              color: '#1A1A1A', // Títulos secundarios en negro
            },
            p: {
              color: '#4A4A49', // Párrafos en gris oscuro
            },
            li: {
              color: '#4A4A49', // Listas en gris oscuro
            },
            blockquote: {
              color: '#1A1A1A', // Citas en negro
              borderLeftColor: '#FFD400', // Borde amarillo para citas
            },
          },
        },
      },
    },
  },
  plugins: [
    require('@tailwindcss/typography'), // Para habilitar la utilidad de tipografía avanzada
  ],
};
