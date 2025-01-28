# ✨ César Miguel Ramírez Luces  
## 🌟 Proyecto PHP + Tailwind CSS + FETCH

¡Bienvenido al proyecto de la **Unidad 6** de la asignatura **"Desarrollo en Entorno Servidor"**! 🎉  
Este proyecto consiste en desarrollar una aplicación web de **puntuación de productos** utilizando **PHP** , **Tailwind CSS** y **FETCH**. 💻 Aquí encontrarás toda la información necesaria para configurarlo, personalizarlo y ejecutarlo. 🚀  

---

## 🛠️ Requisitos previos  

Antes de comenzar, asegúrate de tener instalados los siguientes programas y herramientas:  

- [**Node.js**](https://nodejs.org) 📦  
  Para gestionar dependencias de JavaScript y ejecutar Tailwind CSS.  
- [**PHP**](https://www.php.net) 🐘  
  Configura `php.ini` y asegúrate de tener PHP correctamente añadido al **PATH** de tu sistema para usarlo en **Visual Studio Code**.  
- [**XAMPP**](https://www.apachefriends.org/es/download.html) ⚙️  
  Herramienta todo en uno que incluye Apache y MySQL, necesarios para ejecutar la aplicación localmente.  
- **Visual Studio Code** 🔥  
  Con la extensión **Five Server** para simplificar el desarrollo local.  

---

## 📂 Estructura del proyecto  

```plaintext
.
├── app/                # Archivos PHP
│   ├── db.php          # Conexión a la base de datos
│   ├── index.php       # Archivo principal
│   └── valorations.php # Panel de valoraciones de productos
├── css/                # Archivos CSS
│   ├── style.css       # Estilos adicionales
│   ├── input.css       # Archivo fuente de Tailwind CSS
│   └── output.css      # Archivo generado por Tailwind CSS
├── node_modules/       # Dependencias de Node.js
├── resources/          # Archivos adicionales (como el script SQL)
│   └── tables.sql    # Archivo SQL para configurar la base de datos
├── tailwind.config.js  # Configuración de Tailwind CSS
├── package.json        # Dependencias y scripts del proyecto
└── README.md           # Este archivo 📖
```

---

## ⚙️ Configuración y despliegue  

### 1️⃣ Instalación del proyecto  

1. **Copia la carpeta** en tu carpeta **htdocs** que se encuentra en la carpeta de XAMPP:  

2. **Instala las dependencias de Node.js** (solo te actualizará algunos paquetes o ningunos):  
   ```bash
   npm install
   ```

3. **Importa la base de datos** en MySQL:  
   - Abre **phpMyAdmin** desde XAMPP.  
   - Crea una nueva base de datos llamada `valorations`.  
   - Importa el archivo `resources/tables.sql` o copia y ejecuta el archivo en una consulta SQL.  

---

## 💻 Despliegue del proyecto desde la terminal de VSCode  

1. Asegúrate de iniciar la terminal en la carpeta principal del proyecto, por ejemplo:  
   **`UT6_SP1_RamírezLucesCésarMiguel`**.  

2. Ejecuta este comando en la terminal para cargar las dependencias de Tailwind CSS:  
   ```bash
   npx tailwindcss -i ./css/input.css -o ./css/output.css --watch
   ```

   Esto generá el archivo `output.css` y permitirá que TailwindCSS sea reconocido por XAMPP.  

3. Deberías ver una salida similar a esta en la terminal:  
   ```plaintext
   Rebuilding...
   Done in 277ms.
   ```

4. Luego, abre **XAMPP** y enciende los servicios de **MySQL** y **Apache**.  

5. Accede al proyecto en tu navegador desde:  
   **`http://localhost/UT6_SP1_RamírezLucesCésarMiguel/app/index.php`**.  

---

## 🛠️ Personalización del proyecto  

### Configuración de la base de datos  

En el archivo `app/db.php`, asegúrate de configurar correctamente las credenciales para la conexión:  
```php
$host = 'localhost';
$dbname = 'productos';
$username = 'root';
$password = ''; // Cambia según tu configuración
```

### Acceso en el panel de inicio de sesión
Los datos de acceso son:
```bash
Usuario: admin
Contraseña: 123456
```

---

## 🔗 Recursos útiles  

- [Documentación oficial de Tailwind CSS](https://tailwindcss.com/docs) 📓  
- [Documentación oficial de PHP](https://www.php.net/docs.php) 🐘  
- [XAMPP (Guía de inicio)](https://www.apachefriends.org/es/index.html) ⚙️  
- [Visual Studio Code](https://code.visualstudio.com) 🔥  


