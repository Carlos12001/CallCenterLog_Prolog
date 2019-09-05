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
despedida([adios|S],S).
despedida([hasta_luego|S],S).
despedida([chao|S],S).

% Nombre del Programa
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

% Sustantivos masculinos
sustantivo_m([internet|S],S).
sustantivo_m([celular|S],S).
sustantivo_m([televisor|S],S).

% Sustantivos femeninos
sustantivo_f([computadora|S],S).
sustantivo_f([impresora|S],S).

% Verbos
verbo([sirve|S],S).
verbo([me,sirve|S],S).
verbo([funciona|S],S).
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

problema("La computadora no enciende").
problema("No puedo ver mis archivos").
problema("La impresora no imprime").
problema("La impresora se le atasca el papel").
problema("No hay conexión a internet").
problema("El internet está lento").
problema("El televisor no funciona").
problema("El televisor tiene mala imagen").
problema("El celular no enciende").
problema("El celular se sobrecalienta").

% Lista de Causas para cada problema, El primer string del hecho es la 
% causa (la cual es propia y unica para cada problema), el segundo
% string indica a cual problema pertenece dicha causa.

% Causas relacionados a computadora
causa("Está desconectada la computadora","La computadora no enciende").
causa("El tomacorriente no funciona","La computadora no enciende").
causa("Los cables no están bien conectados","La computadora no enciende").
causa("Los archivos no existen","No puedo ver mis archivos").
causa("La unidad de almacenamiento no está bien conectada","No puedo ver mis archivos").
causa("Los controladores necesarios no están instalados","No puedo ver mis archivos").

% Causas relacionados a impresora
causa("La impresora no tiene papel","La impresora no imprime").
causa("La impresora no tiene tinta","La impresora no imprime").
causa("La impresora no está bien configurada","La impresora no imprime").
causa("El tamaño de papel no es el correcto","La impresora se le atasca el papel").
causa("El papel no está bien alineado","La impresora se le atasca el papel").
causa("El número de hojas cargadas en la impresora es menor a la capacidad","La impresora se le atasca el papel").

% Causas relacionados a internet
causa("El módem está desconectado","No hay conexión a internet").
causa("La computadora no tiene habilitada la tarjeta WIFI","No hay conexión a internet").
causa("La computadora no está conectada por cable","No hay conexión a internet").
causa("El router no está conectado al módem","No hay conexión a internet").
causa("Su dispositivo no está cerca del router","El internet está lento").
causa("El dispositivo tiene muchas aplicaciones corriendo simultáneamente","El internet está lento").
causa("La capacidad de internet es inferior a 5MB","El internet está lento").

% Causas relacionados a televisor
causa("El televisor no está conectado","El televisor no funciona").
causa("El control remoto no tiene bateria","El televisor no funciona").
causa("El interruptor de ahorro de energía del televisor no está encedido","El televisor no funciona").
causa("El tomacorriente no funciona","El televisor no funciona").
causa("El televisor no está bien conectado al cable o antena","El televisor tiene mala imagen").
causa("El televisor no tiene la actualización más reciente","El televisor tiene mala imagen").
causa("Hay dispositivos cerca que brindan interferencia del televisor","El televisor tiene mala imagen").

% Causas relacionados a celular
/*causa("","El celular no enciende").
causa("","El celular no enciende").
causa("","El celular no enciende").
causa("","El celular se sobrecalienta").
causa("","El celular se sobrecalienta").
causa("","El celular se sobrecalienta").*/


% Lista de soluciones para cada subproblema, El primer string del hecho es la 
% solucion el segundo string indica a cual subproblema pertenece dicha solucion.

% Soluciones relacionadas a computadora
solucion("Conecte la computadora","Está desconectada la computadora").
solucion("Intente con otro tomacorriente","El tomacorriente no funciona").
solucion("Conecte bien los cables","Los cables no están bien conectados").
solucion("Los archivos no existen","Los archivos no existen").
solucion("Conecte bien la unidad de almacenamiento","La unidad de almacenamiento no está bien conectada").
solucion("Instale los controladores necesarios","Los controladores necesarios no están instalados").

% Soluciones relacionadas a impresora
/*solucion("","La impresora no imprime").
solucion("","La impresora no imprime").
solucion("","La impresora no imprime").
solucion("","La impresora se le atasca el papel").
solucion("","La impresora se le atasca el papel").
solucion("","La impresora se le atasca el papel").*/

% Soluciones relacionadas a internet
/*solucion("","No hay conexión a internet").
solucion("","No hay conexión a internet").
solucion("","No hay conexión a internet").
solucion("","No hay conexión a internet").
solucion("","El internet está lento").
solucion("","El internet está lento").
solucion("","El internet está lento").*/

% Soluciones relacionadas a televisor
/*solucion("","El televisor no funciona").
solucion("","El televisor no funciona").
solucion("","El televisor no funciona").
solucion("","El televisor no funciona").
solucion("","El televisor tiene mala imagen").
solucion("","El televisor tiene mala imagen").
solucion("","El televisor tiene mala imagen").*/

% Soluciones relacionadas a celular
/*solucion("","El celular no enciende").
solucion("","El celular no enciende").
solucion("","El celular no enciende").
solucion("","El celular se sobrecalienta").
solucion("","El celular se sobrecalienta").
solucion("","El celular se sobrecalienta").*/

% Lista de Preguntas para cada subproblema, El primer string del hecho es la
% pregunta que el SE realiza, el segundo string indica a cual problema pertenece.

% Preguntas relacionados a computadora
pregunta("¿Está conectada la computadora?","Está desconectada la computadora").
pregunta("¿Ha intentado probar en otro enchufe?","El tomacorriente no funciona").
pregunta("¿Los cables están bien conectados?","Los cables no están bien conectados").
pregunta("¿Ya se aseguró de que el archivo que está buscando existe?","Los archivos no existen").
pregunta("¿Ya se aseguró de que la unidad de almacenamiento está bien conectada?","La unidad de almacenamiento no está bien conectada").
pregunta("¿Ya instaló los controladores necesarios?","Los controladores necesarios no están instalados").

% Preguntas relacionadas a impresora
/*pregunta("","La impresora no imprime").
pregunta("","La impresora no imprime").
pregunta("","La impresora no imprime").
pregunta("","La impresora se le atasca el papel").
pregunta("","La impresora se le atasca el papel").
pregunta("","La impresora se le atasca el papel").*/

% Preguntas relacionadas a internet
/*pregunta("","No hay conexión a internet").
pregunta("","No hay conexión a internet").
pregunta("","No hay conexión a internet").
pregunta("","No hay conexión a internet").
pregunta("","El internet está lento").
pregunta("","El internet está lento").
pregunta("","El internet está lento").*/

% Preguntas relacionadas a televisor
/*pregunta("","El televisor no funciona").
pregunta("","El televisor no funciona").
pregunta("","El televisor no funciona").
pregunta("","El televisor no funciona").
pregunta("","El televisor tiene mala imagen").
pregunta("","El televisor tiene mala imagen").
pregunta("","El televisor tiene mala imagen").*/

% Preguntas relacionadas a celular
/*pregunta("","El celular no enciende").
pregunta("","El celular no enciende").
pregunta("","El celular no enciende").
pregunta("","El celular se sobrecalienta").
pregunta("","El celular se sobrecalienta").
pregunta("","El celular se sobrecalienta").*/

% Lista de referencias para cada subproblema, El primer string del hecho es la
% referencia, el segundo string indica a cual problema pertenece dicha solución.

% Referencias relacionadas a computadora
/*referencias("","La computadora no enciende").
referencia("","No puedo ver mis archivos").*/

% Referencias relacionadas a impresora
/*referencia("","La impresora no imprime").
referencia("","La impresora se le atasca el papel").*/

% Referencias relacionadas a internet
/*referencia("","No hay conexión a internet").
referencia("","El internet está lento").*/

% Referencias relacionadas a televisor
/*referencia("","El televisor no funciona").
referencia("","El televisor tiene mala imagen").*/

% Referencias relacionadas a celular
/*referencia("","El celular no enciende").
referencia("","El celular se sobrecalienta").*/