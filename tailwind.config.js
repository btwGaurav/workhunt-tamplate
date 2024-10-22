/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ['./*.html'],
  theme: {
    extend: {
      width: {
        500: '500px',
        600: '600px',
      },
      gridColumn: {
        'span-16': 'span 16 / span 16',
      }
    },
  },
  plugins: [],
}

