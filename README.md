# Tutoria
Pagina web que mostrará información relevante sobre los tutores de la facultad

Especificaciones
- Apartado que muestre
  - DAE
  - DAU
  - Secretaría académica
  - Directorio de la facultad (Información de los profesores, sus cubículos)
- Cómo ubicar a los tutores (De acuerdo con la sección)


## Obtener posts de facebook de forma automática
Utilizar la API GRAPH de facebook, se necesita un token de acceso linkeada a la página
Aquí se obtienen diferentes datos a partir de una consulta
![Consulta de ejemplo](img/Ejemplo_valores_de_post.JPG)

Para consultar más información, en el siguiente link obtiene datos de tu perfil de facebook
https://developers.facebook.com/docs/graph-api/get-started

Obtener información sobre los campos disponibles
https://developers.facebook.com/docs/marketing-api/insights/parameters/v16.0

- Crear una API graph default
- Vincular páginas con usuario
- Realizar las pruebas con página para acceder a los datos de la publicación, en cualquiero otro caso no dejará

Usuario David id: 4214126145479991
Prueba tutoría id: 100344976347250
Pagina ejemplo id: 111397078553497


Consultas comunes:
### Consula el nombre y el id del usuario asociado a la APP 
  me?fields=id,name  

### Obtiene el nombre, token-página y id de todas las páginas asociadas al perfil
  {USER-ID}/accounts?                 (Reemplazar por el id del usuario)
  fields=name,access_token&         
  access_token={USER-ACCESS-TOKEN}    

  {user-id}/accounts?fields=name,access_token&access_token={token-user}

### Obtener todas las publicaciones (Hacerlo desde la página en explorador de api graph)
#### En la API GRAPH se debe seleccionar la página, en el servidor debe ingresarse el token de la página y el id de la página
##### Es importante comprobar si la publicación está oculta
{id-page}/feed/?fields=id,permalink_url,created_time,is_hidden,is_published

La API tiene un número limitado de llamadas a los servicios de Facebook
Es necesario almacenar en la base de datos:
  - id de las páginas
  - id del usuario administrador
Es posible que se necesite almacenar la siguiente información:
  - id de las publicaciones mostradas actualmente
  - nombre de las páginas (Como aparecen en el link)
  - fecha de última comprobación (Hacerlo diariamente ?)
  - ACCESS-TOKEN de usuario
  - ACCESS-TOKEN de cada página
La APP puede realizar 200 llamadas a la API por usuario
##### Nota: Cuando la página sea lanzada, es necesario crear tokens de larga duración y actualizar los tokens periódicamente desde la API de Facebook

1. Se accede a la página
2. Comprueba fecha de última consulta
3. Si: la última fecha ha pasado más de X tiempo, entonces vuelve a consultar los datos
4. Consulta página por página la información de sus publicaciones (Se obtiene de la DB los id de las páginas)
5. Obtener url de la publicación más recientes
6. Mostrar publicaciones en el sitio web

Otra idea sería actualizar los links cada vez que se publique, pero se realizarían más consultas