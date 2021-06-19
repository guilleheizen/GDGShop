# GDGShop
![API REST EXPRESS TYPESCRIPT](https://raw.githubusercontent.com/guilleheizen/GDGShop/main/presentacion/01.jpg)

## Herramientas que vamos a necesitar
* Instalar NodeJs
* Instalar Visual Studio Code
* Gestor Para usar Mysql (Wamp)
* Thunder Client para VScode
* Terminal para VScode
* Nodemon
* Typescript

## Empecemos.
Vamos a verificar en la consola si tenemos instalado todo lo necesario para empezar
`npm -v`
`node -v`

#### 1- Primero iniciaremos nuestro proyecto nodejs, para eso ejecutamos el comando
`npm init`
Completamos los datos de nuestra aplicación


#### 2- Instalamos typescript y ESLint para trabajar con typescript y ver los errores de nuestro código cuando estemos escribiendo.

`npm i typescript --save-dev`
`npm install eslint --save-dev`

Para empezar a utilizarlos debemos iniciarlos en nuestro proyecto:

`npx tsc --init`
`npx eslint --init`

Luego de completar los datos de configuración vamos a nuestro archivo **tsconfig.ts**, Modificamos o agregamos:  

`"outDir": "./dist"`

Este será el directorio contenedor de nuestro código compilado.
Con estas configuraciones ya podemos comenzar a montar nuestro servidor.

#### 3- Creamos un entrypoint, el nombre va a ser **index.ts**

#### 4- Instalamos express:

`npm i express --save`

#### 5- Instalamos el paquete de gestión de mysql2

`npm i mysql2`

### Con todo esto ya tenemos lo necesario para trabajar en nuestro proyecto.

![LET'S CODE!](https://raw.githubusercontent.com/guilleheizen/GDGShop/main/presentacion/09.jpg)
