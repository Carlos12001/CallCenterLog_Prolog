/**
 * @file application_db.pl
 * @version 0.1
 * @authors angelortizv, isolis2000, jesquivel48
 * @brief
 */

% Palabras Clave de Usuario -----------------------------------------------------------------------

% Inicio de una Conversacion
saludo([hola|S],S).
saludo([saludos|S],S).
saludo([disculpe|S],S).
saludo([buenos,dias|S],S).
saludo([buenas,tardes|S],S).
saludo([buenas,noches|S],S).

% Fin de una Conversacion
despedida([gracias|S],S).
despedida([muchas,gracias|S],S).
despedida([adios|S],S).
despedida([hasta_luego|S],S).
despedida([chao|S],S).

% nombre del Programa
nombrePrograma([callCenterLog|S],S).
nombrePrograma([log|S],S).
nombrePrograma([callCenter|S],S).

% Palabras Clave para el BNF ----------------------------------------------------------------------

% Determinantes masculinos
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

% Determinantes femeninos
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

% Determinantes neutros
determinante_n([mi|S],S).
determinante_n([mis|S],S).

% sustantivos masculinos
sustantivo_m([internet|S],S).
sustantivo_m([celular|S],S).
sustantivo_m([televisor|S],S).

% sustantivos femeninos
sustantivo_f([computadora|S],S).
sustantivo_f([impresora|S],S).

% Verbos
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

% Negaciones
negacion([no|S],S).
negacion([nunca|S],S).

% Lista de Problemas,Causas,Soluciones, Preguntas y Referencias -----------------------------------

% Lista de Problemas, los problemas son tratados como strings

problema('la computadora no enciende').
problema('la computadora no muestra mis archivos').
problema('la impresora no imprime').
problema('la impresora se le atasca el papel').
problema('el internet no tiene conexión').
problema('el internet esta lento').
problema('el televisor no funciona').
problema('el televisor tiene mala imagen').
problema('el celular no enciende').
problema('el celular se sobrecalienta').

% Lista de Causas para cada problema, el primer string del hecho es la 
% causa (la cual es propia y unica para cada problema), el segundo
% string indica a cual problema pertenece dicha causa.

% Causas relacionados a computadora
causa('la computadora está desconectada','la computadora no enciende').
causa('el tomacorriente no funciona','la computadora no enciende').
causa('los cables no están bien conectados','la computadora no enciende').
causa('los archivos no existen','la computadora no muestra mis archivos').
causa('la unidad de almacenamiento no esta bien conectada','la computadora no muestra mis archivos').
causa('los controladores necesarios no están instalados','la computadora no muestra mis archivos').

% Causas relacionados a impresora
causa('la impresora no tiene papel','la impresora no imprime').
causa('la impresora no tiene tinta','la impresora no imprime').
causa('la impresora no esta bien configurada','la impresora no imprime').
causa('el tamaño de papel no es el correcto','la impresora se le atasca el papel').
causa('el papel no esta bien alineado','la impresora se le atasca el papel').
causa('el número de hojas cargadas en la impresora es menor a la capacidad','la impresora se le atasca el papel').

% Causas relacionados a internet
causa('el módem esta desconectado','el internet no tiene conexión').
causa('la computadora no tiene habilitada la tarjeta WIFI','el internet no tiene conexión').
causa('la computadora no esta conectada por cable','el internet no tiene conexión').
causa('el router no esta conectado al módem','el internet no tiene conexión').
causa('su dispositivo no esta cerca del router','el internet esta lento').
causa('el dispositivo tiene muchas aplicaciones corriendo simultáneamente','el internet esta lento').
causa('la capacidad de internet es inferior a 5MB','el internet esta lento').

% Causas relacionados a televisor
causa('el televisor no esta conectado','el televisor no funciona').
causa('el control remoto no tiene bateria','el televisor no funciona').
causa('el interruptor de ahorro de energía del televisor no esta encedido','el televisor no funciona').
causa('el tomacorriente no funciona','el televisor no funciona').
causa('el televisor no esta bien conectado al cable o antena','el televisor tiene mala imagen').
causa('el televisor no tiene la actualización más reciente','el televisor tiene mala imagen').
causa('hay dispositivos cerca que brindan interferencia del televisor','el televisor tiene mala imagen').

% Causas relacionados a celular
causa('su celular no esta actualizado','El celular está lento').
causa('el celular no tiene suficiente espacio de almacenamiento','El celular está lento').

% Lista de soluciones para cada subproblema, el primer string del hecho es la 
% solucion el segundo string indica a cual subproblema pertenece dicha solucion.

% Soluciones relacionadas a computadora
solucion('conecte la computadora','la computadora está desconectada').
solucion('intente con otro tomacorriente','el tomacorriente no funciona').
solucion('conecte bien los cables','los cables no están bien conectados').
solucion('los archivos no existen','los archivos no existen').
solucion('conecte bien la unidad de almacenamiento','la unidad de almacenamiento no esta bien conectada').
solucion('instale los controladores necesarios','los controladores necesarios no están instalados').

% Soluciones relacionadas a impresora
solucion('ponga papel en la impresora','la impresora no imprime').
solucion('inserte tinta el la impresora','la impresora no imprime').
solucion('configure correctamente la impresora','la impresora no imprime').
solucion('el tamano de papel no es el correcto','la impresora se le atasca el papel').
solucion('alinee el papel','la impresora se le atasca el papel').
solucion('disminuya la cantidad de hojas','la impresora se le atasca el papel').

% Soluciones relacionadas a internet
solucion('conecte el modem','el internet no tiene conexión').
solucion('habilite la tarjeta WI-FI o conecte la computadora con un cable de red','el internet no tiene conexión').
solucion('conecte el router al modem','el internet no tiene conexión').
solucion('acerque el router al dispositivo','el internet esta lento').
solucion('cierre unas cuentas aplicaciones','el internet esta lento').
solucion('aumente su bando','el internet esta lento').

% Soluciones relacionadas a televisor
solucion('conecte el televisor','el televisor no funciona').
solucion('cambie las baterias del control','el televisor no funciona').
solucion('encienda el interruptor','el televisor no funciona').
solucion('cambie el toma que esta usando','el televisor no funciona').
solucion('conecte correctamente el televisor al cable o la antena','el televisor tiene mala imagen').
solucion('instale la actualizacion mas reciente del televisor','el televisor tiene mala imagen').
solucion('aleje los dispositivos del televisor','el televisor tiene mala imagen').

% Soluciones relacionadas a celular
solucion('reinicie el celular','el celular esta lento').
solucion('borre algunas aplicaciones, fotos, videos o archivos','el celular esta lento').
solucion('busque la ultima version, revise si es compatible ','el celular esta lento').

% Solución para caso base
solucion('Este Sistema Experto no puede responder su problema, se recomienda consultar a un técnico.','no hay solucion').

% Lista de Preguntas para cada subproblema, el primer string del hecho es la
% pregunta que el SE realiza, el segundo string indica a cual problema pertenece.

% Preguntas relacionados a computadora
pregunta('¿Revisó que esté conectada la computadora?','la computadora está desconectada').
pregunta('¿Ha intentado probar en otro enchufe?','el tomacorriente no funciona').
pregunta('¿Los cables están bien conectados?','los cables no están bien conectados').
pregunta('¿Ya se aseguró de que el archivo que esta buscando existe?','los archivos no existen').
pregunta('¿Ya se aseguró de que la unidad de almacenamiento esta bien conectada?','la unidad de almacenamiento no esta bien conectada').
pregunta('¿ya instaló los controladores necesarios?','los controladores necesarios no están instalados').

% Preguntas relacionadas a impresora
pregunta('¿Ya revisó que tenga papel?','la impresora no imprime').
pregunta('¿Ya revisó que tenga tinta?','la impresora no imprime').
pregunta('¿Ya se aseguró de que esté bien configurada?','la impresora no imprime').
pregunta('¿El tamaño de papel es el correcto?','la impresora se le atasca el papel').
pregunta('¿El papel está bien alineado?','la impresora se le atasca el papel').
pregunta('¿El número de hojas cargada en la impresora es menor a la capacidad?','la impresora se le atasca el papel').

% Preguntas relacionadas a internet
pregunta('¿El módem está conectado?','el internet no tiene conexión').
pregunta('¿La computadora tiene habilitada la tarjeta WI-FI o está conectada por cable?','el internet no tiene conexión').
pregunta('¿El router está conectada al modem?','el internet no tiene conexión').
pregunta('¿El router está cerca del dispositivo que está usando?','el internet esta lento').
pregunta('¿El dispositivo no tiene muchas aplicaciones que están utilizando internet simultáneamente?','el internet esta lento').
pregunta('¿El internet es mayor a 5 MB?','el internet esta lento').

% Preguntas relacionadas a televisor
pregunta('¿El televisor está conectado?','el televisor no funciona').
pregunta('¿El control remoto tiene batería?','el televisor no funciona').
pregunta('¿El interruptor de ahorro de energía del televisor está encendido?','el televisor no funciona').
pregunta('¿Ha intentado cambiar el toma al que está conectado el televisor?','el televisor no funciona').
pregunta('¿El televisor está bien conectado ya sea a cable o a antenna?','el televisor tiene mala imagen').
pregunta('¿Su televisor tiene la actualización más reciente?','el televisor tiene mala imagen').
pregunta('¿Hay dispositivos cerca del televisor?','el televisor tiene mala imagen').

% Preguntas relacionadas a celular
pregunta('¿Ya probó apagándolo y volviéndolo a encender?','el celular está leno.').
pregunta('¿Verificó que aún tenga suficiente espacio de almacenamiento?','el celular está lento').
pregunta('¿Su celular tiene la actualización más reciente?','el celular está lento').

% Lista de referencias para cada subproblema, el primer string del hecho es la
% referencia, el segundo string indica a cual problema pertenece dicha solución.

% Referencias relacionadas a computadora
referencia('https://www.aboutespanol.com/soluciones-si-tu-pc-no-arranca-no-prende-o-no-enciende-3507940','la computadora no enciende').
referencia('https://es.easeus.com/data-recovery-solution/pen-drive-not-showing-data-files.html','la computadora no muestra mis archivos').

% Referencias relacionadas a impresora
referencia('https://www.pcworld.es/tutoriales/otros-dispositivos/impresora-no-funciona-problemas-impresion-3675127/','la impresora no imprime').
referencia('https://support.hp.com/py-es/document/c00007100','la impresora se le atasca el papel').

% Referencias relacionadas a internet
referencia('https://www.adslzone.net/2015/06/17/que-hacer-cuando-no-funciona-tu-conexion-a-internet/','el internet no tiene conexión').
referencia('https://computerhoy.com/noticias/internet/que-me-va-lento-internet-problemas-habituales-internet-como-solucionarlos-73007','el internet esta lento').

% Referencias relacionadas a televisor
referencia('https://www.sony.es/electronics/support/articles/00094960','el televisor no funciona').
referencia('https://www.sony.es/electronics/support/articles/00094960','el televisor tiene mala imagen').

% Referencias relacionadas a celular
referencia('https://www.bbc.com/mundo/noticias/2015/03/150326_tecnologia_recomendaciones_para_un_celular_lento_kv','el celular está lento').
referencia('','el celular se sobrecalienta').

raiz('la computadora está desconectada','la computadora no enciende'):-
	hoja_izquierda('la computadora está desconectada'), !.
raiz('el tomacorriente no funciona','la computadora no enciende'):-
	hoja_izquierda('el tomacorriente no funciona'), !.
raiz('los cables no están bien conectados','la computadora no enciende'):-
	hoja_izquierda('los cables no están bien conectados'), !.
raiz('no hay solucion','la computadora no enciende'):-
	consulta_caso_base('no hay solucion'), !.