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
causa('esta desconectada la computadora','la computadora no enciende').
causa('el tomacorriente no funciona','la computadora no enciende').
causa('los cables no estan bien conectados','la computadora no enciende').
causa('los archivos no existen','la computadora no muestra mis archivos').
causa('la unidad de almacenamiento no esta bien conectada','la computadora no muestra mis archivos').
causa('los controladores necesarios no estan instalados','la computadora no muestra mis archivos').

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
/*causa('','el celular no enciende').
causa('','el celular no enciende').
causa('','el celular no enciende').
causa('','el celular se sobrecalienta').
causa('','el celular se sobrecalienta').
causa('','el celular se sobrecalienta').*/


% Lista de soluciones para cada subproblema, el primer string del hecho es la 
% solucion el segundo string indica a cual subproblema pertenece dicha solucion.

% Soluciones relacionadas a computadora
solucion('conecte la computadora','esta desconectada la computadora').
solucion('intente con otro tomacorriente','el tomacorriente no funciona').
solucion('conecte bien los cables','los cables no estan bien conectados').
solucion('los archivos no existen','los archivos no existen').
solucion('conecte bien la unidad de almacenamiento','la unidad de almacenamiento no esta bien conectada').
solucion('instale los controladores necesarios','los controladores necesarios no estan instalados').

% Soluciones relacionadas a impresora
/*solucion('','la impresora no imprime').
solucion('','la impresora no imprime').
solucion('','la impresora no imprime').
solucion('','la impresora se le atasca el papel').
solucion('','la impresora se le atasca el papel').
solucion('','la impresora se le atasca el papel').*/

% Soluciones relacionadas a internet
/*solucion('','el internet no tiene conexión').
solucion('','el internet no tiene conexión').
solucion('','el internet no tiene conexión').
solucion('','el internet no tiene conexión').
solucion('','el internet esta lento').
solucion('','el internet esta lento').
solucion('','el internet esta lento').*/

% Soluciones relacionadas a televisor
/*solucion('','el televisor no funciona').
solucion('','el televisor no funciona').
solucion('','el televisor no funciona').
solucion('','el televisor no funciona').
solucion('','el televisor tiene mala imagen').
solucion('','el televisor tiene mala imagen').
solucion('','el televisor tiene mala imagen').*/

% Soluciones relacionadas a celular
/*solucion('','el celular no enciende').
solucion('','el celular no enciende').
solucion('','el celular no enciende').
solucion('','el celular se sobrecalienta').
solucion('','el celular se sobrecalienta').
solucion('','el celular se sobrecalienta').*/

% Solución para caso final
solucion('Este Sistema Experto no puede responder su problema, se recomienda consultar a un técnico','no hay solucion').

% Lista de Preguntas para cada subproblema, el primer string del hecho es la
% pregunta que el SE realiza, el segundo string indica a cual problema pertenece.

% Preguntas relacionados a computadora
pregunta('¿reviso que esté conectada la computadora?','esta desconectada la computadora').
pregunta('¿ha intentado probar en otro enchufe?','el tomacorriente no funciona').
pregunta('¿los cables estan bien conectados?','los cables no estan bien conectados').
pregunta('¿ya se aseguró de que el archivo que esta buscando existe?','los archivos no existen').
pregunta('¿ya se aseguró de que la unidad de almacenamiento esta bien conectada?','la unidad de almacenamiento no esta bien conectada').
pregunta('¿ya instaló los controladores necesarios?','los controladores necesarios no estan instalados').

% Preguntas relacionadas a impresora
/*pregunta('','la impresora no imprime').
pregunta('','la impresora no imprime').
pregunta('','la impresora no imprime').
pregunta('','la impresora se le atasca el papel').
pregunta('','la impresora se le atasca el papel').
pregunta('','la impresora se le atasca el papel').*/

% Preguntas relacionadas a internet
/*pregunta('','el internet no tiene conexión').
pregunta('','el internet no tiene conexión').
pregunta('','el internet no tiene conexión').
pregunta('','el internet no tiene conexión').
pregunta('','el internet esta lento').
pregunta('','el internet esta lento').
pregunta('','el internet esta lento').*/

% Preguntas relacionadas a televisor
/*pregunta('','el televisor no funciona').
pregunta('','el televisor no funciona').
pregunta('','el televisor no funciona').
pregunta('','el televisor no funciona').
pregunta('','el televisor tiene mala imagen').
pregunta('','el televisor tiene mala imagen').
pregunta('','el televisor tiene mala imagen').*/

% Preguntas relacionadas a celular
/*pregunta('','el celular no enciende').
pregunta('','el celular no enciende').
pregunta('','el celular no enciende').
pregunta('','el celular se sobrecalienta').
pregunta('','el celular se sobrecalienta').
pregunta('','el celular se sobrecalienta').*/

% Lista de referencias para cada subproblema, el primer string del hecho es la
% referencia, el segundo string indica a cual problema pertenece dicha solución.

% Referencias relacionadas a computadora
/*referencias('','la computadora no enciende').
referencia('','la computadora no muestra mis archivos').*/

% Referencias relacionadas a impresora
/*referencia('','la impresora no imprime').
referencia('','la impresora se le atasca el papel').*/

% Referencias relacionadas a internet
/*referencia('','el internet no tiene conexión').
referencia('','el internet esta lento').*/

% Referencias relacionadas a televisor
/*referencia('','el televisor no funciona').
referencia('','el televisor tiene mala imagen').*/

% Referencias relacionadas a celular
/*referencia('','el celular no enciende').
referencia('','el celular se sobrecalienta').*/