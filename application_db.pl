/**
 * @file application_db.pl
 * @version 0.1
 * @authors angelortizv, isolis2000, jesquivel48
 * @brief
 */

% Palabras Clave de Usuario ----------------------------------------------

% Inicio de una Conversación
saludo([hola|S],S).
saludo([saludos|S],S).
saludo([disculpe|S],S).
saludo([buenos|S],S).
saludo([buenas|S],S).
saludo([dias|S],S).
saludo([tardes|S],S).
saludo([noches|S],S).

% Fin de una Conversación
despedida([gracias|S],S).
despedida([adios|S],S).
despedida([hasta_luego|S],S).
despedida([chao|S],S).

% Palabras Clave para el BNF ---------------------------------------------

% Determinantes masculinos
determinante([el|S],S).
determinante([lo|S],S).
determinante([los|S],S).
determinante([me|S],S).
determinante([un|S],S).

% Determinantes femeninos
determinante([la|S],S).
determinante([las|S],S).
determinante([una|S],S).

% Sustantivos masculinos
sustantivo_m([computador|S], S).

% Sustantivos femeninos
sustantivo_f([computadora|S], S).
sustantivo_f([impresora|S], S).

% Nombres
nombre([testNombre|S],S).

% Verbos
verbo([sirve|S], S).
verbo([descompuso|S], S).
verbo([rompio|S], S).

