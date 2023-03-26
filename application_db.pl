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

%                                                   Revisar
sustantivo_m([wifi|S],S).
sustantivo_m([router|S],S).
sustantivo_m([control|S],S).

% Que hace					:	sustantivos femeninos
% Nombre de Hecho	:	sustantivo_f([X])
% Entrada					:	sus fem
% Apliacion				:	sintagma_nominal([A],[B])
sustantivo_f([computadora|S],S).
sustantivo_f([impresora|S],S).
sustantivo_f([imagen|S],S).
sustantivo_f([referencia,para|S],S).
sustantivo_f([causas|S],S).


%                                                   Revisar
sustantivo_f([pagina|S],S).
sustantivo_f([credenciales|S],S).
sustantivo_f([corriente|S],S).
sustantivo_f([latencia|S],S).
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

verbo([tiene, imagen|S],S).
verbo([es|S],S).
verbo([es, estatica|S],S).
verbo([esta, apagado|S],S).
verbo([esta, desconectado|S],S).
verbo([carga|S],S).
verbo([llega|S],S).
verbo([hay|S],S).
verbo([hay, corriente|S],S).
verbo([conecta|S],S).

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

problema('internet no conecta').
problema('pagina no carga').

problema('televisor no enciende').
problema('televisor no tiene imagen').

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
causa('el router esta apagado','internet no conecta').
causa('el router esta desconectado','internet no conecta').
causa('las credenciales no son correctas','internet no conecta').

causa('el wifi no llega','pagina no carga').                                  
causa('internet ya en uso','pagina no carga').
causa('la latencia registrada es muy alta (>150ms)','pagina no carga').

%causa televisor
causa('el televisor esta desconectado','televisor no enciende').
causa('no hay corriente','televisor no enciende').
causa('el control no funciona','televisor no enciende').

causa('el televisor esta apagado','televisor no tiene imagen').
causa('el cable esta desconectado','televisor no tiene imagen').
causa('la imagen es estatica ','televisor no tiene imagen').




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
solucion('encienda el router, el router tiene que mostrar las luces encendidas','el router esta apagado').
solucion('conecte correctamente el router, asegurese que los cables se encuentran bien conectados','el router esta desconectado').
solucion('actualice las credenciales del WIFI (olvide la red en el dispositivo y vuelva a introducir la contrasena)','las credenciales no son correctas').

solucion('acerque el router al dispositivo','el wifi no llega').
solucion('desconecte algunos dispositivos de la red', 'internet ya en uso').
solucion('aumente su ancho de banda a mas de 3Mbps de descarga','la latencia registrada es muy alta (>150ms)').

%sol televisor
solucion('conecte el televisor','el televisor esta desconectado').
solucion('cambie el tomacorriente que esta usando','no hay corriente').
solucion('compre un nuevo control remoto','el control no funciona').

solucion('encienda el televisor','el televisor esta apagado').
solucion('conecte correctamente el televisor al cable o la antena','el cable esta desconectado').
solucion('apague y vuelva a encender el televisor si no funciona llevelo a un tecnico','la imagen es estatica').

%sol celular
solucion('reinicie el celular','el celular ocupa un reinicio').
solucion('elimine algunas aplicaciones, fotos, videos o archivos','el celular no tiene suficiente espacio de almacenamiento').
solucion('actualize a la ultima version, revise si es compatible ','su celular no esta actualizado').

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
pregunta('¿El router se encuentra encendido?','el router esta apagado').
pregunta('¿Se aseguro que los cables estan bien conectados?','el router esta desconectado').
pregunta('¿Verifico que ingreso las credenciales del WIFI son las correctas?','las credenciales no son correctas').

pregunta('¿Llega el wifi con suficiente fuerza?','el wifi no llega').
pregunta('¿Eres el unico dispositivo conectado a la red?','internet ya en uso').
pregunta('¿Su internet tiene mas 3Mbps de descarga?','la latencia registrada es muy alta (>150ms)').

%preguntas televisor
pregunta('¿Se encuentra el televisor conectado?','el televisor esta desconectado').
pregunta('¿Verifico que hay corriente?','no hay corriente').
pregunta('¿Trato de prender el televisor sin el control?','el control no funciona').

pregunta('¿Verifico que el televisor este encendido?','el televisor esta apagado').
pregunta('¿Esta el cable de video conectado?','el cable esta desconectado').
pregunta('¿Verifico que la imagen no sea estatica?','la imagen es estatica').

%preguntas celular
pregunta('¿Ya probo apagandolo y volviendolo a encender?','el celular ocupa un reinicio').
pregunta('¿Verifico que aun tenga suficiente espacio de almacenamiento?','el celular no tiene suficiente espacio de almacenamiento').
pregunta('¿Su celular tiene la actualizacion mas reciente?','su celular no esta actualizado').

% Descripcion		:	Lista de referencias para cada subproblema
% Nombre de Hecho	:	referencia(E,A)
% Parametro			:	(link de internet para un determinado problema, problema al que pertenece)
% Uso				:	referencias(A)

%ref computadora

referencia('https://es.ccm.net/forum/affich-1818610-mi-laptop-samsung-no-arranca','computadora no prende').
referencia('https://www.samsung.com/us/support/troubleshooting/TSG01109614/','computadora no prende').
referencia('https://www.samsung.com/us/support/troubleshooting/TSG01209064/','computadora no prende').

referencia ('https://www.xataka.com/basics/que-hacer-tu-ordenador-se-calienta-normal','computadora se calienta').
referencia ('https://www.avg.com/es/signal/computer-overheating-fix','computadora se calienta').

referencia('https://www.profesionalreview.com/2020/05/31/no-suena-mi-pc-soluciones/', 'computadora no reproduce sonido').
referencia('https://support.microsoft.com/es-es/windows/solucionar-problemas-de-sonido-o-audio-en-windows-73025246-b61c-40fb-671a-2535c7cd56c8', 'computadora no reproduce sonido').

%ref impresora
referencia('https://www.manua.ls/samsung/xpress-sl-m2070w/manual','impresora no imprime').
referencia('https://www.samsung.com/ca/support/category/computing/printer/','impresora no imprime').

referencia('https://www.imageoneway.com/blog/the-4-most-common-reasons-that-your-printer-might-be-jamming','impresora se le atasca el papel').
referencia('https://www.hp.com/us-en/shop/tech-takes/hp-samsung-printers-review','impresora se le atasca el papel').
referencia('https://www.samsung.com/ca/support/category/computing/printer/','impresora se le atasca el papel').

%ref internet
referencia('https://support.google.com/googleplay/answer/2651367?hl=es-419#zippy=%2Cc%C3%B3mo-solucionar-problemas-de-wi-fi','internet no conecta').
referencia('https://support.microsoft.com/es-es/windows/solucionar-problemas-de-conexi%C3%B3n-wi-fi-en-windows-9424a1f7-6a3b-65a6-4d78-7f07eee84d2c','internet no conecta').

referencia('https://support.google.com/chrome/answer/95669?hl=es-419&co=GENIE.Platform%3DDesktop','pagina no carga').
referencia('https://www.redeszone.net/tutoriales/redes-cable/medir-estabilidad-conexion-red-internet/','pagina no carga').
referencia('https://www.redeszone.net/tutoriales/redes-cable/evitar-problemas-cargar-web-navegador/','pagina no carga').

%ref televisor
referencia('https://www.samsung.com/pe/support/tv-audio-video/how-to-troubleshoot-the-samsung-tv-that-will-not-turn-on/','televisor no enciende').
referencia('https://howtl.com/es/como-resetear-samsung-tv-si-no-enciende/','televisor no enciende').

referencia('https://eu.community.samsung.com/t5/tvs/mala-imagen-en-movimiento/m-p/751816','televisor no tiene imagen').
referencia('https://aprende.com/blog/oficios/reparacion-electronica/fallas-comunes-televisor/','televisor no tiene imagen').

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
raiz('el router esta apagado','internet no conecta'):-
	hoja_izquierda('el router esta apagado'), !.
raiz('el router esta desconectado','internet no conecta'):-
	hoja_izquierda('el router esta desconectado'), !.
raiz('las credenciales no son correctas','internet no conecta'):-
	hoja_izquierda('las credenciales no son correctas'), !.
raiz('no hay solucion','internet no conecta'):-
	consulta_caso_base('no hay solucion'), !.

raiz('el wifi no llega','pagina no carga'):-
	hoja_izquierda('el wifi no llega'), !.
raiz('internet ya en uso','pagina no carga'):-
	hoja_izquierda('internet ya en uso'), !.
raiz('la latencia registrada es muy alta (>150ms)','pagina no carga'):-
	hoja_izquierda('la latencia registrada es muy alta (>150ms)'), !.
raiz('no hay solucion','pagina no carga'):-
	consulta_caso_base('no hay solucion'), !.

%desicion televisor
raiz('el televisor esta desconectado','televisor no enciende'):-
	hoja_izquierda('el televisor esta desconectado'), !.
raiz('no hay corriente','televisor no enciende'):-
	hoja_izquierda('no hay corriente'), !.
raiz('el control no funciona','televisor no enciende'):-
	hoja_izquierda('el control no funciona'), !.
raiz('no hay solucion','televisor no enciende'):-
	consulta_caso_base('no hay solucion'), !.

raiz('el televisor esta apagado','televisor no tiene imagen'):-
	hoja_izquierda('el televisor esta apagado'), !.
raiz('el cable esta desconectado','televisor no tiene imagen'):-
	hoja_izquierda('el cable esta desconectado'), !.
raiz('la imagen es estatica','televisor no tiene imagen'):-
	hoja_izquierda('la imagen es estatica'), !.
raiz('no hay solucion','televisor no tiene imagen'):-
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
