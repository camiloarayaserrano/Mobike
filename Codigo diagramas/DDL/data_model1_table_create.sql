CREATE TABLE public.cliente (
    rut Varchar NOT NULL,
    nombre Varchar NOT NULL,
    apellido Varchar NOT NULL,
    edad Number NOT NULL,
    correo Varchar NOT NULL,
    telefono Number NOT NULL,
    telefono_fijo Number NOT NULL,
    PRIMARY KEY (rut)
);
/*Cliente es donde está guardado la información sobre el cliente, rut, nombre, 
apellido, edad, correo, telefono y telefono fijo. Esta información servirá para saber sobre el cliente, identificarlo */

COMMENT ON TABLE public.cliente
    IS '#*Rut
*Nombre
*Apellido
*Dirección
*Edad
*Correo
*Telefono
oTelefono_Fijo';

CREATE TABLE public.usuario (
    id_usuario Varchar NOT NULL,
    nombre_usuario Varchar NOT NULL,
    PRIMARY KEY (id_usuario)
);
/*Usuario es la información basica sobre la cuenta esto incluye el id del usuario 
y el nombre mencionado anteriormente*/

CREATE TABLE public.tarjeta_credito (
    titular Varchar NOT NULL,
    fecha_de_vencimiento Varchar NOT NULL,
    clave_de_seguridad Varchar NOT NULL
);
/*Tarjeta_credito es donde se almacena la información sobre la tarjeta de credito
 ingresada por un usuario, esta se utiliza para verificar y
 aceptar a un usuario al momento de registro*/

CREATE TABLE public.solicitud (
    fecha_solicitud Varchar NOT NULL
);

/*Es la solicitud creada para aceptar o rechazar a un posible usuario*/

CREATE TABLE public.funcionario (
    rut_funcionario Varchar NOT NULL,
    nombre_funcionario Varchar NOT NULL,
    apellido_funcionario Varchar NOT NULL,
    telefono_funcionario Number NOT NULL,
    telefono_fijo_funcionario Number NOT NULL,
    correo_funcionario Varchar NOT NULL,
    edad_funcionario Number NOT NULL,
    PRIMARY KEY (rut_funcionario)
);
/*Información sobre el funcionario, este se encarga de aceptar o rechazar 
solicitudes, se guarda información como rut, nombre, apellido,telefono, 
telefono fijo, correo y edad del funcionario*/

CREATE TABLE public.solicitud_bicicleta (
    num_solicitud Number NOT NULL,
    fecha_fin Varchar NOT NULL,
    PRIMARY KEY (num_solicitud)
);


CREATE TABLE public.bicicleta (
    num_bicicleta Number NOT NULL,
    modelo Varchar NOT NULL,
    aro Number NOT NULL,
    PRIMARY KEY (num_bicicleta)
);

/*Información basica sobre las bicicletas que arrendaran los usuarios,
 en esta clase se guarda el numero de la bicicleta el cual es único. modelo y aro*/

CREATE TABLE public.zona_de_solicitud (
    cod_zona Varchar NOT NULL,
    PRIMARY KEY (cod_zona)
);
/*En zona de solicitud se guarda el codigo de una zona para identificarla, 
gracias a esta tambien se podran sacar zonas mas concurridas por los usuarios*/		
