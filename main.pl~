/**
 * @file main.pl
 * @version 0.1
 * @authors angelortizv, isolis2000, jesquivel48
 * @brief
 */

:-consult('application_db').


% BNF --------------------------------------------------------------------

oracion(A,B):- sintagma_nominal(A,C),
               sintagma_verbal(C,B).

sintagma_nominal(A, B) :-
	determinante_m(A, C),
	sustantivo_m(C, B).
sintagma_nominal(A, B) :-
	determinante_f(A, C),
	sustantivo_f(C, B).

sintagma_verbal(A,B):- verbo(A,B).
sintagma_verbal(A,B):- verbo(A,C),
                       sintagma_nominal(C,B).

sintagma_saludo(A,B):- saludo(A,C),
                       nombre(C,B).
sintagma_saludo(A,B):- saludo(A,C),
                       saludo(C,D),
                       nombre(D,B).

% BNF ------------------------------------------------------------------

% verbos ---------------------------------------------------------------
verbo([sirve|S], S).
verbo([descompuso|S], S).
verbo([rompio|S], S).

% sustantivos masculinos -----------------------------------------------
sustantivo_m([computador|S], S).

% sustantivos femeninos ------------------------------------------------
sustantivo_f([computadora|S], S).
sustantivo_f([impresora|S], S).

% determinantes masculinos ---------------------------------------------
determinante_m([el|S], S).

% determinantes femeninos ----------------------------------------------
determinante_f([la|S], S).


