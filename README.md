
# Tienda virtual

Este es un proyecto de tesis, cuyo objetivo principal es el desarrollo de una plataforma web innovadora y funcional que permita a los usuarios comparar dispositivos móviles de manera sencilla y efectiva, así como realizar compras en línea de forma segura y eficiente. Esta plataforma está diseñada para mejorar la experiencia de los clientes al ofrecer información detallada sobre los productos y facilitar el proceso de adquisición, reduciendo la dependencia de redes sociales como único canal de venta digital.


# Características

**Gestión de productos:** Añadir, editar y eliminar productos del catálogo.

**Carrito de compras:** Los usuarios pueden agregar productos al carrito y proceder a la compra.

**Envío de correos electrónicos:** Integración con PHPMailer para enviar notificaciones por correo electrónico.

**Interfaz responsiva:** Diseño adaptado para una buena experiencia en dispositivos móviles y de escritorio.

**Base de datos:** Utiliza MySQL para almacenar la información de los productos y usuarios.

**Comparaciones de moviles:** Se agregó una funcion la cual permite comparar las especificaciones de los dispositivos. 


# Tecnologías Utilizadas

Node.js

MySQL

HTML/CSS

JavaScript


# Requisitos

XAMPP instalado para ejecutar el servidor local (tener el proyecto el la carpeta htdocs de XAMPP).

Tener Nodejs version 23 o superior en el sistema.

Conexión a Internet.

Para ver la pagina, escribir en la web => http://localhost:3000


## Conclusión

Este proyecto de Tienda Online proporciona una plataforma funcional para la compra y venta de productos, utilizando Nodejs y JavaScript para ofrecer una experiencia de usuario fluida y atractiva. A través de la implementación de características como la gestión de productos y un carrito de compras eficiente, he logrado construir una aplicación que cumple con los objetivos iniciales del proyecto.

A futuro, planeo expandir la funcionalidad del sistema, incluyendo opciones de pago en línea y la posibilidad de gestionar usuarios, lo que mejorará aún más la experiencia del usuario.

Espero que este proyecto sirva como base para futuros desarrollos y contribuya al aprendizaje de otros en el campo del desarrollo web.


## Pasos para levantar el sistema:

**Con la libreria de express ya puedes correr el proyecto sin problemas porque esta libreria ya proporciona un servidor, pero se necesitará uno para la base de datos, ya sea que descargues la de MySQL en la web oficial o lo tengas en XAMPP con phpmyadmin**

Decargar las siguientes dependecias:

**Ejemplo:** npm install (importante para instalar los paquetes de JavaScript llamado generalmente "node_module")

```bash
    "body-parser": "^1.20.3",
    "cors": "^2.8.5",
    "ejs": "^3.1.10",
    "express": "^4.21.2",
    "express-fileupload": "^1.5.1",
    "express-session": "^1.18.1",
    "mysql": "^2.18.1",
    "mysql2": "^3.11.5"

    "autoprefixer": "^10.4.20",
    "nodemon": "^3.1.9",
    "postcss": "^8.4.49",
    "tailwindcss": "^3.4.16"
```
Ejecutar en la terminal "npm init" para el archivo package.json que tendra lo siguiente:


**Nota:** Luego de instalar las dependecias, puedes copiar este mismo contenido del archivo package.json y pegarlo en tu archivo package.json

```bash 
{
  "name": "mi-app",
  "version": "1.0.0",
  "main": "index.js",
  "type": "module",
  "scripts": {
    "start": "nodemon index.js"
  },
  "author": "",
  "license": "ISC",
  "dependencies": {
    "body-parser": "^1.20.3",
    "cors": "^2.8.5",
    "ejs": "^3.1.10",
    "express": "^4.21.2",
    "express-fileupload": "^1.5.1",
    "express-session": "^1.18.1",
    "mysql": "^2.18.1",
    "mysql2": "^3.11.5"
  },
  "devDependencies": {
    "autoprefixer": "^10.4.20",
    "nodemon": "^3.1.9",
    "postcss": "^8.4.49",
    "tailwindcss": "^3.4.16"
  },
  "keywords": [],
  "description": ""
 }
```

**IMPORTANTE:** Subir la base de datos por orden para evitar errores por las claves foraneas.
