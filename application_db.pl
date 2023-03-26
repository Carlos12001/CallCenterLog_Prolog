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

%                                                   Revisar
sustantivo_m([wifi|S],S).
sustantivo_m([router|S],S).
sustantivo_m([control|S],S).

% Descripcion		:	sustantivos femeninos
% Nombre de Hecho	:	sustantivo_f([X])
% Parametro			:	sustantivos femeninos
% Uso				:	sintagma_nominal([A],[B])
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

verbo([tiene, imagen|S],S).
verbo([es|S],S).
verbo([es, estatica|S],S).
verbo([esta, apagado|S],S).
verbo([esta, desconectado|S],S).
verbo([carga|S],S).
verbo([llega|S],S).
verbo([hay|S],S).
verbo([hay, corriente|S],S).


% Lista de Problemas,Causas,Soluciones,Preguntas y Referencias ----------------------------------------------------------------------------

% Descripcion		:	Lista de Problemas, los problemas son tratados como strings
% Nombre de Hecho	:	problema(A)
% Parametro			:	problema reconocido por el SE
% Uso				:	causa(B,A), referencia(E,A), raiz(B,A)
problema('computadora no enciende').
problema('computadora no muestra mis archivos').
problema('impresora no imprime').
problema('impresora se le atasca el papel').
problema('internet no conecta').
problema('pagina no carga').
problema('televisor no enciende').
problema('televisor no tiene imagen').
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

% Causas relacionados a impresora
causa('la impresora no tiene papel','impresora no imprime').
causa('la impresora no tiene tinta','impresora no imprime').
causa('la impresora no esta bien configurada','impresora no imprime').
causa('el tamano de papel no es el correcto','impresora se le atasca el papel').
causa('el papel no esta bien alineado','impresora se le atasca el papel').
causa('el numero de hojas cargadas en la impresora es mayor a la capacidad','impresora se le atasca el papel').

% Causas relacionados a internet
causa('el router esta apagado','internet no conecta').
causa('las credenciales no son correctas','internet no conecta').
causa('el router esta desconectado','internet no conecta').
causa('el wifi no llega','pagina no carga').                                  
causa('internet ya en uso','pagina no carga').
causa('la latencia registrada es muy alta (>150ms)','pagina no carga').

% Causas relacionados a televisor
causa('el televisor esta desconectado','televisor no enciende').
causa('no hay corriente','televisor no enciende').
causa('el control no funciona','televisor no enciende').

causa('el cable esta desconectado','televisor no tiene imagen').
causa('el televisor esta apagado','televisor no tiene imagen').
causa('la imagen es estatica ','televisor no tiene imagen').




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

% Preguntas relacionadas a impresora
pregunta('¿Ya reviso que tenga papel?','la impresora no tiene papel').
pregunta('¿Ya reviso que tenga tinta?','la impresora no tiene tinta').
pregunta('¿Ya se aseguro de que este bien configurada?','la impresora no esta bien configurada').
pregunta('¿El tamano de papel es el correcto?','el tamano de papel no es el correcto').
pregunta('¿El papel esta bien alineado?','el papel no esta bien alineado').
pregunta('¿El numero de hojas cargada en la impresora es mayor a la capacidad?','el numero de hojas cargadas en la impresora es mayor a la capacidad').

% Preguntas relacionadas a internet
pregunta('¿Se encuentran las luces del router encendidas?','el router esta apagado').
pregunta('¿Verifico que ingreso las credenciales correctamente?','las credenciales no son correctas').
pregunta('¿Esta el router conectado?','el router esta desconectado').
pregunta('¿Llega el wifi con suficiente fuerza?','el wifi no llega').
pregunta('¿Estan otros dispositivos o apps utilizando el internet?','internet ya en uso').
pregunta('¿Conoce la latencia de la conexion?','la latencia registrada es muy alta (>150ms)').

% Preguntas relacionadas a televisor
pregunta('¿Se encuentra el televisor conectado?','el televisor esta desconectado').
pregunta('¿Verifico que hay corriente?','no hay corriente').
pregunta('¿Trato de prender el televisor sin el control?','el control no funciona').
pregunta('¿Esta el cable de video conectado?','el cable esta desconectado').
pregunta('¿Verifico que el televisor este encendido?','el televisor esta apagado').
pregunta('¿Verifico que la imagen no sea estatica?','la imagen es estatica').

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

% Referencias relacionadas a impresora
referencia('https://www.manua.ls/samsung/xpress-sl-m2070w/manual','impresora no imprime').
referencia('https://www.samsung.com/ca/support/category/computing/printer/','impresora no imprime').
referencia('https://www.imageoneway.com/blog/the-4-most-common-reasons-that-your-printer-might-be-jamming','impresora se le atasca el papel').
referencia('https://www.hp.com/us-en/shop/tech-takes/hp-samsung-printers-review','impresora se le atasca el papel').
referencia('https://www.samsung.com/ca/support/category/computing/printer/','impresora se le atasca el papel').

% Referencias relacionadas a internet
referencia('https://support.google.com/googleplay/answer/2651367?hl=es-419#zippy=%2Cc%C3%B3mo-solucionar-problemas-de-wi-fi','internet no conecta').
referencia('https://support.microsoft.com/es-es/windows/solucionar-problemas-de-conexi%C3%B3n-wi-fi-en-windows-9424a1f7-6a3b-65a6-4d78-7f07eee84d2c','internet no conecta').
referencia('https://support.google.com/chrome/answer/95669?hl=es-419&co=GENIE.Platform%3DDesktop','pagina no carga').
referencia('https://www.redeszone.net/tutoriales/redes-cable/medir-estabilidad-conexion-red-internet/','pagina no carga').
referencia('https://www.redeszone.net/tutoriales/redes-cable/evitar-problemas-cargar-web-navegador/','pagina no carga').

% Referencias relacionadas a televisor
referencia('https://www.samsung.com/pe/support/tv-audio-video/how-to-troubleshoot-the-samsung-tv-that-will-not-turn-on/','televisor no enciende').
referencia('https://howtl.com/es/como-resetear-samsung-tv-si-no-enciende/','televisor no enciende').
referencia('https://eu.community.samsung.com/t5/tvs/mala-imagen-en-movimiento/m-p/751816','televisor no tiene imagen').
referencia('https://aprende.com/blog/oficios/reparacion-electronica/fallas-comunes-televisor/','televisor no tiene imagen').

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
raiz('el router esta apagado','internet no conecta'):-
	hoja_izquierda('el router esta apagado'), !.
raiz('las credenciales no son correctas','internet no conecta'):-
	hoja_izquierda('las credenciales no son correctas'), !.
raiz('el router esta desconectado','internet no conecta'):-
	hoja_izquierda('el router esta desconectado'), !.
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

% arbol de decision referente a causas y problemas asociadas a televisor
raiz('el televisor esta desconectado','televisor no enciende'):-
	hoja_izquierda('el televisor no esta conectado'), !.
raiz('no hay corriente','televisor no enciende'):-
	hoja_izquierda('no hay corriente'), !.
raiz('el control no funciona','televisor no enciende'):-
	hoja_izquierda('el control no funciona'), !.
raiz('no hay solucion','televisor no enciende'):-
	consulta_caso_base('no hay solucion'), !.
raiz('el cable esta desconectado','televisor no tiene imagen'):-
	hoja_izquierda('el cable esta desconectado'), !.
raiz('el televisor esta apagado','televisor no tiene imagen'):-
	hoja_izquierda('el televisor esta apagado'), !.
raiz('la imagen es estatica','televisor no tiene imagen'):-
	hoja_izquierda('la imagen es estatica'), !.
raiz('no hay solucion','televisor no tiene imagen'):-
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