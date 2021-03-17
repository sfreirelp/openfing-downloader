# openfing-downloader
Descargador automático de videos de OpenFing

Descarga las clases que se deseen de una materia, desde el servidor de OpenFing. Permite descargar múltiples de forma sucesiva, y permite eliminar las anteriores (exclusivamente de la materia a descargar) si ya se vieron.

Para utilizarlo se precisa el código de la clase, que se obtiene del link al curso en OpenFing. Por ejemplo, en el caso de la edición 2019 de Geometría y Álgebra Lineal 1, el link para acceder es https://open.fing.edu.uy/courses/gal119.

En este caso, gal119 es el código del curso, y es el que hay que ingresar cuando el script lo pida.

La primera y última clase es el rango de clases a descargar. Por ejemplo, poner como primera 7 y como última 11 descarga todas de la 7 a la 11. Actualmente no es posible descargar clases no consecutivas.

Lo que sí se puede es descargar una sola, en ese caso se debe poner el mismo número en 'primera' y 'última'. Por ejemplo, si se quiere descargar la clase 27, se pone 27 en las dos preguntas de clases a descargar, y bajará solo la elegida.

Cualquier comentario o sugerencia pueden hacer una pull request o abrir una issue.
