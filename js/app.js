// app.js

// Este código asegura que el documento esté completamente cargado antes de aplicar el evento clic a las imágenes.
document.addEventListener("DOMContentLoaded", function () {
    // Seleccionamos todas las imágenes dentro de elementos <a> con la clase "gallery-item"
    const galleryItems = document.querySelectorAll("a.gallery-item img");
  
    // Recorremos todas las imágenes y agregamos el evento clic a cada una.
    galleryItems.forEach((img) => {
      img.addEventListener("click", function () {
        // Obtenemos el atributo "href" del enlace padre para redirigir a la página correspondiente.
        const link = img.parentElement.getAttribute("href");
        if (link) {
          window.location.href = link;
        }
      });
    });
  });
  