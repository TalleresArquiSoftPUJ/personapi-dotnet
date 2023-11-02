# PersonAPI .NET

## Configuración

### Requisitos Previos

- SQL Server 2019 Express
- SQL Server Management Studio 19
- Visual Studio Community 2022

### Base de Datos

1. Crear la base de datos "persona_db" en SQL Server.
2. Configurar permisos para el usuario "sa".

## Pasos para Configurar el Ambiente

1. Clonar este repositorio.
2. Crear un proyecto en Visual Studio Community 2022 con la plantilla "Aplicación web de ASP.NET Core (Modelo-Vista-Controlador)".
3. Asegurarse de seleccionar .NET 6.0, sin autenticación y sin configuración HTTPS.
4. Activar la vista del Explorador de objetos de SQL Server.

### Configuración de Conexión

1. Agregar y probar la conexión de tipo "local express" en Visual Studio.
2. Instalar los siguientes paquetes NuGet en el proyecto:
   - Microsoft.EntityFrameworkCore
   - Microsoft.EntityFrameworkCore.SqlServer
   - Microsoft.EntityFrameworkCore.Tools

## Compilación

Para compilar el proyecto, siga estos pasos:

1. Abra la solución en Visual Studio Community 2022.
2. Asegúrese de que el proyecto esté configurado correctamente, con las referencias y paquetes NuGet necesarios.
3. Compile el proyecto utilizando la opción "Compilar" en Visual Studio.

## Despliegue

El despliegue de la aplicación puede variar según sus necesidades y preferencias. Aquí se presentan algunas opciones comunes:

### Despliegue Local

1. Si desea ejecutar la aplicación localmente, asegúrese de tener una instancia de SQL Server disponible.
2. Asegúrese de que la cadena de conexión en el archivo `appsettings.json` esté configurada correctamente para su entorno local.
3. Inicie la aplicación desde Visual Studio utilizando la opción "Depurar" (F5).

### Despliegue en un Servidor o Plataforma en la Nube

Para desplegar la aplicación en un servidor o en una plataforma en la nube, siga estos pasos generales:

1. Compile y publique la aplicación utilizando Visual Studio. Esto generará un conjunto de archivos listos para ser desplegados.
2. Elija su plataforma de despliegue preferida, como Azure, AWS, o un servidor web.
3. Configure el servidor o la plataforma en la nube según las recomendaciones del proveedor.
4. Despliegue los archivos generados en el paso 1 en el servidor o plataforma en la nube.
5. Asegúrese de que la cadena de conexión en el archivo `appsettings.json` esté configurada para su entorno de despliegue.

Consulte la documentación de su plataforma de despliegue específica para obtener instrucciones detalladas sobre cómo desplegar una aplicación ASP.NET Core.

Recuerde que la elección de la plataforma de despliegue dependerá de sus requisitos y preferencias. Asegúrese de configurar adecuadamente las variables de entorno y las configuraciones específicas de la plataforma según sea necesario.
