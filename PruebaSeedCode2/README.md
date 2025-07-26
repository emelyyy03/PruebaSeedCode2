Gestión de Roles y Usuarios
- Descripción
Este proyecto es una aplicación web desarrollada en ASP.NET MVC para la gestión de usuarios y sus roles asociados. Utiliza Entity Framework en modo Database First para manejar la persistencia de datos en una base de datos SQL Server. La aplicación incluye funcionalidades de inicio de sesión (login), control de acceso basado en roles y administración de usuarios y roles.

- Tecnologías utilizadas
ASP.NET MVC 5

Entity Framework 6 (Database First)

SQL Server

Visual Studio (u otro IDE compatible)

- Paquetes NuGet:

EntityFramework

EntityFramework.SqlServer

EntityFramework.Tools

- Estructura de la base de datos
La base de datos contiene al menos dos tablas principales:

Usuarios: Contiene la información de los usuarios registrados (Id, name, email, password, id_role).

Roles: Define los diferentes roles que pueden asignarse a los usuarios (administrador, usuario estándar, etc.).

Estas tablas están relacionadas entre sí, estableciendo una relación que permite asignar roles a los usuarios y controlar el acceso dentro de la aplicación.

- Funcionalidades principales
Gestión de usuarios: Crear, editar, eliminar y listar usuarios.

Gestión de roles: Crear, editar, eliminar y listar roles.

Asignación de roles a usuarios.

Autenticación: Login seguro para acceder a la aplicación.

Autorización: Control de acceso a vistas y funcionalidades según el rol del usuario.

- Cómo ejecutar el proyecto
Clonar el repositorio:
git clone https://github.com/emelyyy03/PruebaSeedCode2.git

- Abrir la solución en Visual Studio.

- Restaurar paquetes NuGet si es necesario.

- Configurar la cadena de conexión en el archivo appsettings.json para apuntar a tu base de datos SQL Server.

- Ejecutar la aplicación (F5 o Ctrl + F5).

- Notas adicionales
El modelo de datos se generó utilizando la estrategia Database First, importando las tablas existentes desde SQL Server.

El login utiliza autenticación básica con validación de usuarios y roles desde la base de datos.

La aplicación puede ampliarse para soportar funcionalidades adicionales como registro de nuevos usuarios y agrega nuevos roles.

Adjunto a este proyecto esta el script de la base de datos para SQL Server junto con datos por defecto para poder iniciar sesion con dicho usuario y contraseñas:
- Credenciales de acceso:
  ° Email: admin@gmail.com
  ° Contraseña: 12345