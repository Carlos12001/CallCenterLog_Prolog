% Este archivo es la base datos del programa.

% Palabras Clave de Usuario ---------------------------------------------------------------------------------------------------------------

% Descripcion		:	Inicio de una Conversacion
% Nombre de Hecho	:	saludo([X])
% Parametro			: 	palabra clave de saludo 	
% Uso				:	sintagma_saludo([B])
saludo([hola|S],S).
saludo([tuanis|S],S).
saludo([pura, vida|S],S).
saludo([eso, todo, bien|S], S).
saludo([buenos,dias|S],S).
saludo([buenas,tardes|S],S).
saludo([buenas,noches|S],S).

% Descripcion		:	Nombre del Programa
% Nombre de Hecho	:	nombre_programa([X])
% Parametro			:	nombre del Sistema Experto
% Uso				:	sintagma_saludo([B])
nombre_programa([callCenterLog|S],S).
nombre_programa([log|S],S).
nombre_programa([callCenter|S],S).

% Palabras Clave para el BNF --------------------------------------------------------------------------------------------------------------

%  Descripcion		:	Determinantes masculinos
% Nombre de Hecho	:	determinante_m(X)
% Parametro			:	determinantes masculinos
% Uso				:	sintagma_nominal([A],[B])		
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

% Descripcion		:	Determinantes femeninos
% Nombre de Hecho	:	determinante_f([X])
% Parametro			:	determinantes femeninos
% Uso				:	sintagma_nominal([A],[B])
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

% Descripcion		:	Determinantes neutros
% Nombre de Hecho	:	determinante_n([X])
% Parametro			:	determinantes neutros
% Uso				:	sintagma_nominal([A],[B])
determinante_n([mi|S],S).
determinante_n([mis|S],S).
determinante_n([posibles|S],S).

% Descripcion		:	Negaciones
% Nombre de Hecho	:	negacion([X])
% Parametro			:	adverbios de negacion
% Uso				:	oracion([A],[B])
negacion([no|S],S).
negacion([nunca|S],S).

% Descripcion		:	sustantivos masculinos
% Nombre de Hecho	:	sustantivo_m([X])
% Parametro			:	sustantivos masculinos
% Uso				:	sintagma_nominal([A],[B])
sustantivo_m([internet|S],S).
sustantivo_m([celular|S],S).
sustantivo_m([televisor|S],S).
sustantivo_m([archivos|S],S).
sustantivo_m([papel|S],S).
sustantivo_m([problema|S],S).

% Descripcion		:	sustantivos femeninos
% Nombre de Hecho	:	sustantivo_f([X])
% Parametro			:	sustantivos femeninos
% Uso				:	sintagma_nominal([A],[B])
sustantivo_f([computadora|S],S).
sustantivo_f([impresora|S],S).
sustantivo_f([imagen|S],S).
sustantivo_f([referencia,para|S],S).
sustantivo_f([causas|S],S).
sustantivo_f([corriente|S],S).

% Descripcion		:	
% Nombre de Hecho	:	inicio causa_ref([X])
% Parametro			:	
% Uso				:	
inicio_cr([posibles,causas,del,problema|S],S).
inicio_cr([algunas,referencias,para,el,problema|S],S).

% Descripcion		:	Verbos
% Nombre de Hecho	:	verbo([X])
% Parametro			:	verbos utilizables
% Uso				:	sintagma_verbal([A],[B])
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



% Lista de Problemas,Causas,Soluciones,Preguntas y Referencias ----------------------------------------------------------------------------

% Descripcion		:	Lista de Problemas, los problemas son tratados como strings
% Nombre de Hecho	:	problema(A)
% Parametro			:	problema reconocido por el SE
% Uso				:	causa(B,A), referencia(E,A), raiz(B,A)
problema('computadora no enciende').
problema('computadora no muestra mis archivos').
problema('computadora no prende').

problema('impresora no imprime').
problema('impresora se le atasca el papel').

problema('internet no tiene conexion').
problema('internet esta lento').

problema('televisor no funciona').
problema('televisor tiene mala imagen').

problema('celular esta lento').


% Descripcion		:	Lista de Causas para cada problema
% Nombre de Hecho	:	causa(B,A)
% Parametro			:	(causa asociado a un determinado problema, problema al que pertenece)
% Uso				:	solucion(C,B), pregunta(D,B), raiz(B,A), causas(A)

% Causas relacionados a computadora
causa('la computadora esta desconectada','computadora no enciende').
causa('el tomacorriente asociado a la computadora no funciona','computadora no enciende').
causa('los cables no estan bien conectados','computadora no enciende').

causa('los archivos no existen','computadora no muestra mis archivos').
causa('la unidad de almacenamiento no esta bien conectada','computadora no muestra mis archivos').
causa('los controladores necesarios no estan instalados','computadora no muestra mis archivos').

causa('la computadora no esta cargada', 'computadora no prende').
causa('el boton de encendido no funciona','computadora no prende').
causa('la bateria esta agotada o no funciona','computadora no prende').

% Causas relacionados a impresora
causa('la impresora no tiene papel','impresora no imprime').
causa('la impresora no tiene tinta','impresora no imprime').
causa('la impresora no esta bien configurada','impresora no imprime').
causa('el tamano de papel no es el correcto','impresora se le atasca el papel').
causa('el papel no esta bien alineado','impresora se le atasca el papel').
causa('el numero de hojas cargadas en la impresora es mayor a la capacidad','impresora se le atasca el papel').

% Causas relacionados a internet
causa('el modem esta desconectado','internet no tiene conexion').
causa('la computadora no tiene habilitada la tarjeta WIFI','internet no tiene conexion').
causa('el router no esta conectado al modem','internet no tiene conexion').
causa('su dispositivo no esta cerca del router','internet esta lento').
causa('el dispositivo tiene muchas aplicaciones corriendo simultaneamente','internet esta lento').
causa('la capacidad de internet es inferior a 5MB','internet esta lento').

% Causas relacionados a televisor
causa('el televisor no esta conectado','televisor no funciona').
causa('el control remoto no tiene bateria','televisor no funciona').
causa('el interruptor de ahorro de energia del televisor no esta encedido','televisor no funciona').
causa('el tomacorriente asociado al televisor  no funciona','televisor no funciona').
causa('el televisor no esta bien conectado al cable o antena','televisor tiene mala imagen').
causa('el televisor no tiene la actualizacion mas reciente','televisor tiene mala imagen').
causa('hay dispositivos cerca que brindan interferencia del televisor','televisor tiene mala imagen').

% Causas relacionados a celular
causa('el celular ocupa un reinicio', 'celular esta lento').
causa('el celular no tiene suficiente espacio de almacenamiento','celular esta lento').
causa('su celular no esta actualizado','celular esta lento').

% Descripcion		:	Lista de soluciones para cada subproblema
% Nombre de Hecho	:	solucion(C,B)
% Parametro			:	(solucion asociada a una causa, causa a la que pertenece)
% Uso				:	consulta_caso_base(B), conversacion(Oracion)

% Soluciones relacionadas a computadora
solucion('conecte la computadora','la computadora esta desconectada').
solucion('intente con otro tomacorriente','el tomacorriente asociado a la computadora no funciona').
solucion('conecte bien los cables','los cables no estan bien conectados').

solucion('los archivos no existen','los archivos no existen').
solucion('conecte bien la unidad de almacenamiento','la unidad de almacenamiento no esta bien conectada').
solucion('instale los controladores necesarios','los controladores necesarios no estan instalados').

solucion('conecte el cargador de la computadora','la computadora no esta cargada').
solucion('llevelo a un tecnico para cambiar el boton de encendido', 'el boton de encendido no funciona').
solucion('remplazar la bateria de la computadora','la bateria esta agotada o no funciona').

% Soluciones relacionadas a impresora
solucion('ponga papel en la impresora','la impresora no tiene papel').
solucion('inserte tinta el la impresora','la impresora no tiene tinta').
solucion('configure correctamente la impresora','la impresora no esta bien configurada').
solucion('utilice tamano de papel correcto','el tamano de papel no es el correcto').
solucion('alinee el papel','el papel no esta bien alineado').
solucion('disminuya la cantidad de hojas','el numero de hojas cargadas en la impresora es mayor a la capacidad').

% Soluciones relacionadas a internet
solucion('conecte el modem','el modem esta desconectado').
solucion('habilite la tarjeta WI-FI o conecte la computadora con un cable de red','la computadora no tiene habilitada la tarjeta WIFI').
solucion('conecte el router al modem','el router no esta conectado al modem').
solucion('acerque el router al dispositivo','su dispositivo no esta cerca del router').
solucion('cierre unas cuentas aplicaciones','el dispositivo tiene muchas aplicaciones corriendo simultaneamente').
solucion('aumente su bando','la capacidad de internet es inferior a 5MB').

% Soluciones relacionadas a televisor
solucion('conecte el televisor','el televisor no esta conectado').
solucion('cambie las baterias del control','el control remoto no tiene bateria').
solucion('encienda el interruptor','el interruptor de ahorro de energia del televisor no esta encendido').
solucion('cambie el toma que esta usando','el tomacorriente asociado al televisor  no funciona').
solucion('conecte correctamente el televisor al cable o la antena','el televisor no esta bien conectado al cable o antena').
solucion('instale la actualizacion mas reciente del televisor','el televisor no tiene la actualizacion mas reciente').
solucion('aleje los dispositivos del televisor','hay dispositivos cerca que brindan interferencia del televisor').

% Soluciones relacionadas a celular
solucion('reinicie el celular','el celular ocupa un reinicio').
solucion('borre algunas aplicaciones, fotos, videos o archivos','el celular no tiene suficiente espacio de almacenamiento').
solucion('busque la ultima version, revise si es compatible ','el celular no esta actualizado').

% Solucion para caso base
solucion('Este Sistema Experto no puede responder su problema, se recomienda consultar a un tecnico.','no hay solucion').

% Descripcion		:	Lista de Preguntas para cada subproblema
% Nombre de Hecho	:	pregunta(D,B)
% Parametro			:	(pregunta asociada a una causa, causa a la que pertenece)
% Uso				:	hoja_izquierda(B)

% Preguntas relacionados a computadora
pregunta('¿Reviso que este conectada la computadora?','la computadora esta desconectada').
pregunta('¿Ha intentado probar en otro enchufe?','el tomacorriente asociado a la computadora no funciona').
pregunta('¿Los cables estan bien conectados?','los cables no estan bien conectados').

pregunta('¿Ya se aseguro de que el archivo que esta buscando existe?','los archivos no existen').
pregunta('¿Ya se aseguro de que la unidad de almacenamiento esta bien conectada?','la unidad de almacenamiento no esta bien conectada').
pregunta('¿ya instalo los controladores necesarios?','los controladores necesarios no estan instalados').

pregunta('¿Ya se aseguro de que la computadora esta cargada?','la computadora no esta cargada').
pregunta('¿Ya se aseguro que el boton de encendido funciona?', 'el boton de encendido no funciona').
pregunta('¿La computadora puede encender sin estar conectada a la corriente electrica?',
		'la bateria esta agotada o no funciona').

% Preguntas relacionadas a impresora
pregunta('¿Ya reviso que tenga papel?','la impresora no tiene papel').
pregunta('¿Ya reviso que tenga tinta?','la impresora no tiene tinta').
pregunta('¿Ya se aseguro de que este bien configurada?','la impresora no esta bien configurada').
pregunta('¿El tamano de papel es el correcto?','el tamano de papel no es el correcto').
pregunta('¿El papel esta bien alineado?','el papel no esta bien alineado').
pregunta('¿El numero de hojas cargada en la impresora es mayor a la capacidad?','el numero de hojas cargadas en la impresora es mayor a la capacidad').

% Preguntas relacionadas a internet
pregunta('¿El modem esta conectado?','el modem esta desconectado').
pregunta('¿La computadora tiene habilitada la tarjeta WI-FI o esta conectada por cable?','la computadora no tiene habilitada la tarjeta WIFI').
pregunta('¿El router esta conectada al modem?','el router no esta conectado al modem').
pregunta('¿El router esta cerca del dispositivo que esta usando?','su dispositivo no esta cerca del router').
pregunta('¿El dispositivo no tiene muchas aplicaciones que estan utilizando internet simultaneamente?','el dispositivo tiene muchas aplicaciones corriendo simultaneamente').
pregunta('¿El internet es mayor a 5 MB?','la capacidad de internet es inferior a 5MB').

% Preguntas relacionadas a televisor
pregunta('¿El televisor esta conectado?','el televisor no esta conectado').
pregunta('¿El control remoto tiene bateria?','el control remoto no tiene bateria').
pregunta('¿El interruptor de ahorro de energia del televisor esta encendido?','el interruptor de ahorro de energia del televisor no esta encendido').
pregunta('¿Ha intentado cambiar el toma al que esta conectado el televisor?','el tomacorriente asociado al televisor  no funciona').
pregunta('¿El televisor esta bien conectado ya sea a cable o a antena?','el televisor no esta bien conectado al cable o antena').
pregunta('¿Su televisor tiene la actualizacion mas reciente?','el televisor no tiene la actualizacion mas reciente').
pregunta('¿Hay dispositivos cerca del televisor?','hay dispositvos cerca que brindan interferencia del televisor').

% Preguntas relacionadas a celular
pregunta('¿Ya probo apagandolo y volviendolo a encender?','el celular ocupa un reinicio').
pregunta('¿Verifico que aun tenga suficiente espacio de almacenamiento?','el celular no tiene suficiente espacio de almacenamiento').
pregunta('¿Su celular tiene la actualizacion mas reciente?','el celular no esta actualizado').

% Descripcion		:	Lista de referencias para cada subproblema
% Nombre de Hecho	:	referencia(E,A)
% Parametro			:	(link de internet para un determinado problema, problema al que pertenece)
% Uso				:	referencias(A)

% Referencias relacionadas a computadora
referencia('https://es.ccm.net/forum/affich-1818610-mi-laptop-samsung-no-arranca','computadora no enciende').
referencia('https://www.samsung.com/us/support/troubleshooting/TSG01109614/','computadora no enciende').
referencia('https://www.samsung.com/us/support/troubleshooting/TSG01209064/','computadora no enciende').

referencia('https://es.easeus.com/computer-instruction/no-se-ven-archivos-guardados-en-escritorio-windows-10.html','computadora no muestra mis archivos').
referencia('https://eu.community.samsung.com/t5/mobile-apps-services/samsung-quot-my-files-quot-no-longer-display-all-folders/td-p/3683141','computadora no muestra mis archivos').
referencia('https://answers.microsoft.com/en-us/windows/forum/all/file-explorer-not-showing-the-list-of-folders-in/5d377f73-f08a-4584-82f7-c511d23a8688','computadora no muestra mis archivos').


referencia('https://es.ccm.net/forum/affich-1818610-mi-laptop-samsung-no-arranca','computadora no prende').
referencia('https://www.samsung.com/us/support/troubleshooting/TSG01109614/','computadora no prende').
referencia('https://www.samsung.com/us/support/troubleshooting/TSG01209064/','computadora no prende').

% Referencias relacionadas a impresora
referencia('https://www.manua.ls/samsung/xpress-sl-m2070w/manual','impresora no imprime').
referencia('https://www.samsung.com/ca/support/category/computing/printer/','impresora no imprime').
referencia('https://www.imageoneway.com/blog/the-4-most-common-reasons-that-your-printer-might-be-jamming','impresora se le atasca el papel').
referencia('https://www.hp.com/us-en/shop/tech-takes/hp-samsung-printers-review','impresora se le atasca el papel').
referencia('https://www.samsung.com/ca/support/category/computing/printer/','impresora se le atasca el papel').

% Referencias relacionadas a internet
referencia('https://www.samsung.com/us/support/troubleshooting/TSG01109777/','internet no tiene conexion').
referencia('https://www.samsung.com/us/support/troubleshooting/TSG01109716/','internet no tiene conexion').
referencia('hhttps://www.highspeedinternet.com/es/recursos/por-que-mi-internet-esta-lento','internet esta lento').
referencia('https://www.samsung.com/us/support/troubleshooting/TSG01110584/','internet esta lento').
referencia('https://www.xataka.com/basics/internet-va-lento-principales-causas-sus-posibles-soluciones','internet esta lento').

% Referencias relacionadas a televisor
referencia('https://www.samsung.com/pe/support/tv-audio-video/how-to-troubleshoot-the-samsung-tv-that-will-not-turn-on/','televisor no funciona').
referencia('https://howtl.com/es/como-resetear-samsung-tv-si-no-enciende/','televisor no funciona').
referencia('https://eu.community.samsung.com/t5/tvs/mala-imagen-en-movimiento/m-p/751816','televisor tiene mala imagen').
referencia('https://aprende.com/blog/oficios/reparacion-electronica/fallas-comunes-televisor/','televisor tiene mala imagen').

% Referencias relacionadas a celular
referencia('https://www.samsung.com/es/support/mobile-devices/why-is-my-phone-slowing-down-and-how-can-i-speed-it-up/','celular esta lento').
referencia('https://www.giztab.com/mi-samsung-va-muy-lento-causas-y-soluciones/','celular esta lento').

% Descripcion		:	arbol de decision, lectura de respuestas por parte del usuario.
% Nombre de Hecho	:	raiz(B,A)
% Parametro			:	(causa asociado a un determinado problema, problema al que pertenece)
% Uso				:	conversacion()

% arbol de decision referente a causas y problemas asociadas a computadora
raiz('la computadora esta desconectada','computadora no enciende'):-
	hoja_izquierda('la computadora esta desconectada'), !.
raiz('el tomacorriente asociado a la computadora no funciona','computadora no enciende'):-
	hoja_izquierda('el tomacorriente asociado a la computadora no funciona'), !.
raiz('los cables no estan bien conectados','computadora no enciende'):-
	hoja_izquierda('los cables no estan bien conectados'), !.
raiz('no hay solucion','computadora no enciende'):-
	consulta_caso_base('no hay solucion'), !.

raiz('los archivos no existen','computadora no muestra mis archivos'):-
	hoja_izquierda('los archivos no existen'), !.
raiz('la unidad de almacenamiento no esta bien conectada','computadora no muestra mis archivos'):-
	hoja_izquierda('la unidad de almacenamiento no esta bien conectada'), !.
raiz('los controladores necesarios no estan instalados','computadora no muestra mis archivos'):-
	hoja_izquierda('los controladores necesarios no estan instalados'), !.
raiz('no hay solucion','computadora no muestra mis archivos'):-
	consulta_caso_base('no hay solucion'), !.

raiz('la computadora no esta cargada', 'computadora no prende'):-
	hoja_izquierda('la computadora no esta cargada'), !.
raiz('el boton de encendido no funciona','computadora no prende'):-
	hoja_izquierda('el boton de encendido no funciona'), !.
raiz('la bateria esta agotada o no funciona', 'computadora no prende'):-
	hoja_izquierda('la bateria esta agotada o no funciona'), !.
raiz('no hay solucion','computadora no prende'):-
	consulta_caso_base('no hay solucion'), !.

% arbol de decision referente a causas y problemas asociadas a impresora
raiz('la impresora no tiene papel','impresora no imprime'):-
	hoja_izquierda('la impresora no tiene papel'), !.
raiz('la impresora no tiene tinta','impresora no imprime'):-
	hoja_izquierda('la impresora no tiene tinta'), !.
raiz('la impresora no esta bien configurada','impresora no imprime'):-
	hoja_izquierda('la impresora no esta bien configurada'), !.
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

% arbol de decision referente a causas y problemas asociadas a internet
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

% arbol de decision referente a causas y problemas asociadas a televisor
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

% arbol de decision referente a causas y problemas asociadas a celular
raiz('el celular ocupa un reinicio','celular esta lento'):-
	hoja_izquierda('el celular ocupa un reinicio'), !.
raiz('el celular no tiene suficiente espacio de almacenamiento','celular esta lento'):-
	hoja_izquierda('el celular no tiene suficiente espacio de almacenamiento'), !.
raiz('su celular no esta actualizado','celular esta lento'):-
	hoja_izquierda('su celular no esta actualizado'), !.
raiz('no hay solucion','celular esta lento'):-
	consulta_caso_base('no hay solucion'), !.