# README

## GET /api/products

Description

Example of response:
```json
[
  {
    "id": 220,
    "name": "Ipsum",
    "url_image": "'https://url-image.cloudfront.net/11132/product/product.jpg'",
    "price": "220"
    "discount": "220"
    "nombre_producto": "Ipsum"
  }
]
```
## GET /api/products/%#{searchParam}%

searchParam = 'pap'

Description

Example of response:
```json
[
  {
    "id":55
    "name":"snack"
    "url_image":"https://dojiw2m9tvv09.cloudfront.net/11132/product/papaslisas7271.jpg"
    "price":500.0
    "discount":0
    "nombre_producto":"Papas Fritas Bolsa Pequeña"
    }
    
    {
    "id":54
    "name":"snack"
    "url_image":"https://dojiw2m9tvv09.cloudfront.net/11132/product/papaslisasgrande7128.jpg"
    "price":1490.0
    "discount":0
    "nombre_producto":"Papas Fritas Lisas Bolsa Grande"
    
    }
    
    {
    "id":56
    "name":"snack"
    "url_image":"https://dojiw2m9tvv09.cloudfront.net/11132/product/78028005335657432.jpg"
    "price":1990.0
    "discount":0
    "nombre_producto":"Papas Fritas Tarro"
    }
]
```
## GET /api/category

Description

Example of response:
```json
[
  {
    "id": 220,
    "name": "Ipsum",
  }
]
```
