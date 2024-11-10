 # proyectoBD
Proyecto de Base de Datos del equipo DataBenders

## Integrantes:
- Soto Huerta Gustavo Isaac
- Franco Arellano Luis Fernando
- Villeda Tlecuitl José Eduardo 
- Zavala Sánchez Eduardo

## Consideraciones

- Para poder abrir los archivos SQL es necesario el DBMS PostgreSQL. Para poder instalarlo en Windows verifique la documentación oficial.
- En caso de instalarlo en Ubuntu utiicé el comando:
  ```bash
  sudo apt install postgresql 

- En caso de instalarlo en Fedora utilicé el comando:
  ```bash
  sudo dnf install postgresql-*  

## Cargar la base de datos
- El comando para cargar la base de datos es:
    ```bash
  psql -U usuario -d baseDeDatos < rutaArchivo.sql    

## Cargar datos a la base 

- Para generar un archivo de inserciones para nuestra base de datos usaremos el