% Este archivo es la base datos del programa.

% Que hace		:	Inicio de una Conversacion
% Nombre de Hecho	:	saludo([X])
% Entrada		: 	saludo	
% Apliicacion			:	sintagma_saludo([B])
saludo([hola|S],S).
saludo([tuanis|S],S).
saludo([pura, vida|S],S).
saludo([eso, todo, bien|S], S).
saludo([buenos,dias|S],S).
saludo([buenas,tardes|S],S).
saludo([buenas,noches|S],S).

% Descripcion		:	Nombre del Programa
% Nombre de Hecho	:	nombre_programa([X])
% Parametro			:	nombre del SE
% Aplicccion				:	sintagma_saludo([B])
nombre_programa([callCenterLog|S],S).
nombre_programa([log|S],S).
nombre_programa([callCenter|S],S).

%----- palabras para BNF ------ 

% Que hace		:	determinantes
% Nombre de Hecho	:	determinadtes([X])
% Entrada			:	deter
% Aplicacion				: sintagma_nominal([A],[B])	
determinante_m([el|S],S).
determinante_m([lo|S],S).
determinante_m([los|S],S).
determinante_m([un|S],S).
determinante_m([unos|S],S).
determinante_m([este|S],S).
determinante_m([estos|S],S).
determinante_m([nuestro|S],S).
determinante_m([otro|S],S).
determinante_m([alguno|S],S).
determinante_m([algunos|S],S).
determinante_m([del|S],S).

% Que hace		:	determinantes
% Nombre de Hecho	:	determinadtes([X])
% Entrada			:	deter
% Aplicacion				: sintagma_nominal([A],[B])
determinante_f([la|S],S).
determinante_f([las|S],S).
determinante_f([una|S],S).
determinante_f([unas|S],S).
determinante_f([esta|S],S).
determinante_f([estas|S],S).
determinante_f([nuestra|S],S).
determinante_f([otra|S],S).
determinante_f([alguna|S],S).
determinante_f([algunas|S],S).
determinante_f([mala|S],S).
determinante_f([ala|S],S).

% Que hace		:	determinantes
% Nombre de Hecho	:	determinadtes([X])
% Entrada			:	deter
% Aplicacion				: sintagma_nominal([A],[B])
determinante_n([mi|S],S).
determinante_n([mis|S],S).
determinante_n([posibles|S],S).

% Que hace		:	negar
% Nombre de Hecho	:	negacion([X])
% Entrada			:	negacion
% Aplicacion				:	oracion([A],[B])
negacion([no|S],S).
negacion([nunca|S],S).

% Que hace					:	sustantivos masculinos
% Nombre de Hecho	:	sustantivo_M([X])
% Entrada					:	sus masc
% Apliacion				:	sintagma_nominal([A],[B])
sustantivo_m([internet|S],S).
sustantivo_m([celular|S],S).
sustantivo_m([televisor|S],S).
sustantivo_m([archivos|S],S).
sustantivo_m([papel|S],S).
sustantivo_m([problema|S],S).

% Que hace					:	sustantivos femeninos
% Nombre de Hecho	:	sustantivo_f([X])
% Entrada					:	sus fem
% Apliacion				:	sintagma_nominal([A],[B])
sustantivo_f([computadora|S],S).
sustantivo_f([impresora|S],S).
sustantivo_f([imagen|S],S).
sustantivo_f([referencia,para|S],S).
sustantivo_f([causas|S],S).
sustantivo_f([corriente|S],S).

% Que hace					:	ejecutar aciones
% Nombre de Hecho			:	inicio_cr([X])
% Entrada					:	accion
% Aplicacion				:	oracion([A],[B])
inicio_cr([posibles,causas,del,problema|S],S).
inicio_cr([algunas,referencias,para,el,problema|S],S).

% Que hace					:	atomo verbo
% Nombre de Hecho			:	verbos([X])
% Entrada					:	verbo
% Aplicacion				:	sintagma_verbal([A],[B])
verbo([sirve|S],S).
verbo([me,sirve|S],S).
verbo([funciona|S],S).
verbo([funcione|S],S).
verbo([se,descompuso|S],S).
verbo([se,rompio|S],S).
verbo([enciende|S],S).
verbo([se,enciende|S],S).
verbo([me,enciende|S],S).
verbo([se,conecta|S],S).
verbo([suena|S],S).
verbo([se,ve|S],S).
verbo([ocupo|S],S).
verbo([cambiar|S],S).
verbo([editar|S],S).
verbo([remover|S],S).
verbo([se,sobrecalienta|S],S).
verbo([se,le,atasca|S],S).
verbo([muestra|S],S).
verbo([esta,lento|S],S).
verbo([tiene|S],S).
verbo([tiene,conexion|S],S).
verbo([imprime|S],S).
verbo([prende|S],S).
verbo([se,calienta|S],S).
verbo([reproduce, sonido|S],S).

% ----------------- Casos -----------------

% Que hace					:	los problema para cada dispositivo
% Nombre de Hecho			:	problema(A)
% Entrada					:	(problema)
% Aplicacion				:	causas(B,A), solucion(C,B), pregunta(D,B), raiz(B,A), causas(A)
problema('computadora no prende').
problema ('computadora se calienta').
problema('computadora no reproduce sonido').

problema('impresora no imprime').
problema('impresora se le atasca el papel').

problema('internet no tiene conexion').
problema('internet esta lento').

problema('televisor no funciona').
problema('televisor tiene mala imagen').

problema('celular esta lento').

% Que hace					:	causas de problemas
% Nombre de Hecho			:	causa(B,A)
% Entrada					:	(causa, problema)
% Aplicacion				:	solucion(C,B), pregunta(D,B), raiz(B,A), causas(A)

%causas computadora
causa('la computadora no esta cargada', 'computadora no prende').
causa('el boton de encendido no funciona','computadora no prende').
causa('la bateria esta agotada o no funciona','computadora no prende').

causa('ventilador no funciona','computadora se calienta').
causa('polvo acumulado en los ventiladores', 'computadora se calienta').
causa('la ubicacion de la computadora no permite una buena ventilacion','computadora se calienta').

causa('volumen esta silenciado','computadora no reproduce sonido').
causa('controladores de sonido no estan instalados o actualizados','computadora no reproduce sonido').
causa('el dispositivo sonido predeterminado no esta configurado','computadora no reproduce sonido').

%causas impresora
causa('no tiene papel','impresora no imprime').
causa('no tiene tinta','impresora no imprime').
causa('no esta bien configurada la impresora','impresora no imprime').

causa('el tamano de papel no es el correcto','impresora se le atasca el papel').
causa('el papel no esta bien alineado','impresora se le atasca el papel').
causa('el numero de hojas cargadas en la impresora es mayor a la capacidad','impresora se le atasca el papel').

%causa internet
causa('el modem esta desconectado','internet no tiene conexion').
causa('la computadora no tiene habilitada la tarjeta WIFI','internet no tiene conexion').
causa('el router no esta conectado al modem','internet no tiene conexion').
causa('su dispositivo no esta cerca del router','internet esta lento').
causa('el dispositivo tiene muchas aplicaciones corriendo simultaneamente','internet esta lento').
causa('la capacidad de internet es inferior a 5MB','internet esta lento').

%causa televisor
causa('el televisor no esta conectado','televisor no funciona').
causa('el control remoto no tiene bateria','televisor no funciona').
causa('el interruptor de ahorro de energia del televisor no esta encedido','televisor no funciona').
causa('el tomacorriente asociado al televisor  no funciona','televisor no funciona').
causa('el televisor no esta bien conectado al cable o antena','televisor tiene mala imagen').
causa('el televisor no tiene la actualizacion mas reciente','televisor tiene mala imagen').
causa('hay dispositivos cerca que brindan interferencia del televisor','televisor tiene mala imagen').

%causa celular
causa('el celular ocupa un reinicio', 'celular esta lento').
causa('el celular no tiene suficiente espacio de almacenamiento','celular esta lento').
causa('su celular no esta actualizado','celular esta lento').

% Que hace					:	soluciones de causas
% Nombre de Hecho			:	solucion(D,B)
% Entrada					:	(solucion, causa)
% Aplicacion				:	consulta_caso_base(), conversacion()

%sol computadora
solucion('conecte el cargador de la computadora','la computadora no esta cargada').
solucion('llevelo a un tecnico para cambiar el boton de encendido', 'el boton de encendido no funciona').
solucion('remplazar la bateria de la computadora','la bateria esta agotada o no funciona').

solucion('reemplazar el ventilador por uno nuevo','ventilador no funciona').
solucion('limpie los ventiladores','polvo acumulado en los ventiladores').
solucion('cambie la ubicacion de la computadora, para mejorar la ventilacion','la ubicacion de la computadora no permite una buena ventilacion').

solucion('suba o active el volumen','volumen esta silenciado').
solucion('actualice los controladores de sonido','controladores de sonido no estan instalados o actualizados').
solucion('configure el dispositivo sonido predeterminado','el dispositivo sonido predeterminado no esta configurado').

%sol impresora
solucion('agregue papel en la impresora','no tiene papel').
solucion('inserte un nuevo paquete tinta el la impresora','no tiene tinta').
solucion('configure correctamente la impresora','no esta bien configurada la impresora').

solucion('utilice tamano de papel correcto','el tamano de papel no es el correcto').
solucion('alinee el papel','el papel no esta bien alineado').
solucion('disminuya la cantidad de hojas','el numero de hojas cargadas en la impresora es mayor a la capacidad').

%sol internet
solucion('conecte el modem','el modem esta desconectado').
solucion('habilite la tarjeta WI-FI o conecte la computadora con un cable de red','la computadora no tiene habilitada la tarjeta WIFI').
solucion('conecte el router al modem','el router no esta conectado al modem').
solucion('acerque el router al dispositivo','su dispositivo no esta cerca del router').
solucion('cierre unas cuentas aplicaciones','el dispositivo tiene muchas aplicaciones corriendo simultaneamente').
solucion('aumente su bando','la capacidad de internet es inferior a 5MB').

%sol televisor
solucion('conecte el televisor','el televisor no esta conectado').
solucion('cambie las baterias del control','el control remoto no tiene bateria').
solucion('encienda el interruptor','el interruptor de ahorro de energia del televisor no esta encendido').
solucion('cambie el toma que esta usando','el tomacorriente asociado al televisor  no funciona').
solucion('conecte correctamente el televisor al cable o la antena','el televisor no esta bien conectado al cable o antena').
solucion('instale la actualizacion mas reciente del televisor','el televisor no tiene la actualizacion mas reciente').
solucion('aleje los dispositivos del televisor','hay dispositivos cerca que brindan interferencia del televisor').

%sol celular
solucion('reinicie el celular','el celular ocupa un reinicio').
solucion('borre algunas aplicaciones, fotos, videos o archivos','el celular no tiene suficiente espacio de almacenamiento').
solucion('busque la ultima version, revise si es compatible ','el celular no esta actualizado').

%sin sol
solucion('Este Sistema Experto no puede responder su problema, se recomienda consultar a un tecnico.','no hay solucion').

% Que hace					:	Preguntas para causas de problemas
% Nombre de Hecho			:	pregunta(D,B)
% Entrada					:	(pregunta, causa)
% Aplicacion				:	hoja_izquierda(B)

% preguntas computadora
pregunta('¿Ya se aseguro de que la computadora esta cargada?','la computadora no esta cargada').
pregunta('¿Ya se aseguro que el boton de encendido funciona?', 'el boton de encendido no funciona').
pregunta('¿La computadora puede encender sin estar conectada a la corriente electrica?',
		'la bateria esta agotada o no funciona').

pregunta('¿El ventilador suena de forma normal?', 'ventilador no funciona').
pregunta('¿El ventilador esta limpio?', 'polvo acumulado en los ventiladores').
pregunta('¿La ubicacion de la computadora permite una buena ventilacion?', 'la ubicacion de la computadora no permite una buena ventilacion').

pregunta('¿El volumen esta activado?', 'volumen esta silenciado').
pregunta('¿Los controladores de sonido estan instalados y actualizados?', 'controladores de sonido no estan instalados o actualizados').
pregunta('El dispositivo sonido predeterminado esta configurado correctamente?', 'el dispositivo sonido predeterminado no esta configurado').

%preguntas impresora
pregunta('¿Tiene papel la impresora?','no tiene papel').
pregunta('¿Tiene tinta la impresora?','no tiene tinta').
pregunta('¿Reviso si su impresora esta bien configurada?','no esta bien configurada la impresora').
pregunta('¿El tamano de papel es el correcto?','el tamano de papel no es el correcto').
pregunta('¿El papel esta bien alineado?','el papel no esta bien alineado').
pregunta('¿El numero de hojas cargada en la impresora es mayor a la capacidad?','el numero de hojas cargadas en la impresora es mayor a la capacidad').

%preguntas internet
pregunta('¿El modem esta conectado?','el modem esta desconectado').
pregunta('¿La computadora tiene habilitada la tarjeta WI-FI o esta conectada por cable?','la computadora no tiene habilitada la tarjeta WIFI').
pregunta('¿El router esta conectada al modem?','el router no esta conectado al modem').
pregunta('¿El router esta cerca del dispositivo que esta usando?','su dispositivo no esta cerca del router').
pregunta('¿El dispositivo no tiene muchas aplicaciones que estan utilizando internet simultaneamente?','el dispositivo tiene muchas aplicaciones corriendo simultaneamente').
pregunta('¿El internet es mayor a 5 MB?','la capacidad de internet es inferior a 5MB').

%preguntas televisor
pregunta('¿El televisor esta conectado?','el televisor no esta conectado').
pregunta('¿El control remoto tiene bateria?','el control remoto no tiene bateria').
pregunta('¿El interruptor de ahorro de energia del televisor esta encendido?','el interruptor de ahorro de energia del televisor no esta encendido').
pregunta('¿Ha intentado cambiar el toma al que esta conectado el televisor?','el tomacorriente asociado al televisor  no funciona').
pregunta('¿El televisor esta bien conectado ya sea a cable o a antena?','el televisor no esta bien conectado al cable o antena').
pregunta('¿Su televisor tiene la actualizacion mas reciente?','el televisor no tiene la actualizacion mas reciente').
pregunta('¿Hay dispositivos cerca del televisor?','hay dispositvos cerca que brindan interferencia del televisor').

%preguntas celular
pregunta('¿Ya probo apagandolo y volviendolo a encender?','el celular ocupa un reinicio').
pregunta('¿Verifico que aun tenga suficiente espacio de almacenamiento?','el celular no tiene suficiente espacio de almacenamiento').
pregunta('¿Su celular tiene la actualizacion mas reciente?','el celular no esta actualizado').

% Descripcion		:	Lista de referencias para cada subproblema
% Nombre de Hecho	:	referencia(E,A)
% Parametro			:	(link de internet para un determinado problema, problema al que pertenece)
% Uso				:	referencias(A)

%ref computadora

referencia('https://es.ccm.net/forum/affich-1818610-mi-laptop-samsung-no-arranca','computadora no prende').
referencia('https://www.samsung.com/us/support/troubleshooting/TSG01109614/','computadora no prende').
referencia('https://www.samsung.com/us/support/troubleshooting/TSG01209064/','computadora no prende').

%ref impresora
referencia('https://www.manua.ls/samsung/xpress-sl-m2070w/manual','impresora no imprime').
referencia('https://www.samsung.com/ca/support/category/computing/printer/','impresora no imprime').
referencia('https://www.imageoneway.com/blog/the-4-most-common-reasons-that-your-printer-might-be-jamming','impresora se le atasca el papel').
referencia('https://www.hp.com/us-en/shop/tech-takes/hp-samsung-printers-review','impresora se le atasca el papel').
referencia('https://www.samsung.com/ca/support/category/computing/printer/','impresora se le atasca el papel').

%ref internet
referencia('https://www.samsung.com/us/support/troubleshooting/TSG01109777/','internet no tiene conexion').
referencia('https://www.samsung.com/us/support/troubleshooting/TSG01109716/','internet no tiene conexion').
referencia('hhttps://www.highspeedinternet.com/es/recursos/por-que-mi-internet-esta-lento','internet esta lento').
referencia('https://www.samsung.com/us/support/troubleshooting/TSG01110584/','internet esta lento').
referencia('https://www.xataka.com/basics/internet-va-lento-principales-causas-sus-posibles-soluciones','internet esta lento').

%ref televisor
referencia('https://www.samsung.com/pe/support/tv-audio-video/how-to-troubleshoot-the-samsung-tv-that-will-not-turn-on/','televisor no funciona').
referencia('https://howtl.com/es/como-resetear-samsung-tv-si-no-enciende/','televisor no funciona').
referencia('https://eu.community.samsung.com/t5/tvs/mala-imagen-en-movimiento/m-p/751816','televisor tiene mala imagen').
referencia('https://aprende.com/blog/oficios/reparacion-electronica/fallas-comunes-televisor/','televisor tiene mala imagen').

%ref celular
referencia('https://www.samsung.com/es/support/mobile-devices/why-is-my-phone-slowing-down-and-how-can-i-speed-it-up/','celular esta lento').
referencia('https://www.giztab.com/mi-samsung-va-muy-lento-causas-y-soluciones/','celular esta lento').


% Que hace					:	chekea respuestas de entrada
% Nombre de Hecho			:	raiz(D,B)
% Entrada					:	(causa, problema)
% Aplicacion				:	conversacion()

%desicion computadora

raiz('la computadora no esta cargada', 'computadora no prende'):-
	hoja_izquierda('la computadora no esta cargada'), !.
raiz('el boton de encendido no funciona','computadora no prende'):-
	hoja_izquierda('el boton de encendido no funciona'), !.
raiz('la bateria esta agotada o no funciona', 'computadora no prende'):-
	hoja_izquierda('la bateria esta agotada o no funciona'), !.
raiz('no hay solucion','computadora no prende'):-
	consulta_caso_base('no hay solucion'), !.

raiz('ventilador no funciona','computadora se calienta'):-
	hoja_izquierda('ventilador no funciona'), !.
raiz('polvo acumulado en los ventiladores','computadora se calienta'):-
	hoja_izquierda('polvo acumulado en los ventiladores'), !.
raiz('la ubicacion de la computadora no permite una buena ventilacion','computadora se calienta'):-
	hoja_izquierda('la ubicacion de la computadora no permite una buena ventilacion'), !.
raiz('no hay solucion','computadora se calienta'):-
	consulta_caso_base('no hay solucion'), !.

raiz('volumen esta silenciado','computadora no reproduce sonido'):- 
	hoja_izquierda('volumen esta silenciado'), !.
raiz('controladores de sonido no estan instalados o actualizados','computadora no reproduce sonido'):- 
	hoja_izquierda('controladores de sonido no estan instalados o actualizados'), !.
raiz('el dispositivo sonido predeterminado no esta configurado','computadora no reproduce sonido'):- 
	hoja_izquierda('el dispositivo sonido predeterminado no esta configurado'), !.
raiz('no hay solucion','computadora no reproduce sonido'):-
	consulta_caso_base('no hay solucion'), !.

%desicion impresora
raiz('no tiene papel','impresora no imprime'):-
	hoja_izquierda('no tiene papel'), !.
raiz('no tiene tinta','impresora no imprime'):-
	hoja_izquierda('no tiene tinta'), !.
raiz('no esta bien configurada la impresora','impresora no imprime'):-
	hoja_izquierda('no esta bien configurada la impresora'), !.
raiz('no hay solucion','impresora no imprime'):-
	consulta_caso_base('no hay solucion'), !.
	
raiz('el tamano de papel no es el correcto','impresora se le atasca el papel'):-
	hoja_izquierda('el tamano de papel no es el correcto'), !.
raiz('el papel no esta bien alineado','impresora se le atasca el papel'):-
	hoja_izquierda('el papel no esta bien alineado'), !.
raiz('el numero de hojas cargadas en la impresora es mayor a la capacidad','impresora se le atasca el papel'):-
	hoja_izquierda('el numero de hojas cargadas en la impresora es mayor a la capacidad'), !.
raiz('no hay solucion','impresora se le atasca el papel'):-
	consulta_caso_base('no hay solucion'), !.

%desicion internet
raiz('el modem esta desconectado','internet no tiene conexion'):-
	hoja_izquierda('el modem esta desconectado'), !.
raiz('la computadora no tiene habilitada la tarjeta WIFI','internet no tiene conexion'):-
	hoja_izquierda('la computadora no tiene habilitada la tarjeta WIFI'), !.
raiz('el router no esta conectado al modem','internet no tiene conexion'):-
	hoja_izquierda('el router no esta conectado al modem'), !.
raiz('no hay solucion','internet no tiene conexion'):-
	consulta_caso_base('no hay solucion'), !.
raiz('su dispositivo no esta cerca del router','internet esta lento'):-
	hoja_izquierda('su dispositivo no esta cerca del router'), !.
raiz('el dispositivo tiene muchas aplicaciones corriendo simultaneamente','internet esta lento'):-
	hoja_izquierda('el dispositivo tiene muchas aplicaciones corriendo simultaneamente'), !.
raiz('la capacidad de internet es inferior a 5MB','internet esta lento'):-
	hoja_izquierda('la capacidad de internet es inferior a 5MB'), !.
raiz('no hay solucion','internet esta lento'):-
	consulta_caso_base('no hay solucion'), !.

%desicion televisor
raiz('el televisor no esta conectado','televisor no funciona'):-
	hoja_izquierda('el televisor no esta conectado'), !.
raiz('lel control remoto no tiene bateria','televisor no funciona'):-
	hoja_izquierda('el control remoto no tiene bateria'), !.
raiz('el interruptor de ahorro de energia del televisor no esta encedido','televisor no funciona'):-
	hoja_izquierda('el interruptor de ahorro de energia del televisor no esta encedido'), !.
raiz('el tomacorriente asociado al televisor  no funciona','televisor no funciona'):-
	hoja_izquierda('el tomacorriente asociado al televisor  no funciona'), !.
raiz('no hay solucion','televisor no funciona'):-
	consulta_caso_base('no hay solucion'), !.
raiz('el televisor no esta bien conectado al cable o antena','televisor tiene mala imagen'):-
	hoja_izquierda('el televisor no esta bien conectado al cable o antena'), !.
raiz('el televisor no tiene la actualizacion mas reciente','televisor tiene mala imagen'):-
	hoja_izquierda('el televisor no tiene la actualizacion mas recientee'), !.
raiz('hay dispositivos cerca que brindan interferencia del televisor','televisor tiene mala imagen'):-
	hoja_izquierda('hay dispositivos cerca que brindan interferencia del televisor'), !.
raiz('no hay solucion','televisor tiene mala imagen'):-
	consulta_caso_base('no hay solucion'), !.

%desicion celular
raiz('el celular ocupa un reinicio','celular esta lento'):-
	hoja_izquierda('el celular ocupa un reinicio'), !.
raiz('el celular no tiene suficiente espacio de almacenamiento','celular esta lento'):-
	hoja_izquierda('el celular no tiene suficiente espacio de almacenamiento'), !.
raiz('su celular no esta actualizado','celular esta lento'):-
	hoja_izquierda('su celular no esta actualizado'), !.
raiz('no hay solucion','celular esta lento'):-
	consulta_caso_base('no hay solucion'), !.