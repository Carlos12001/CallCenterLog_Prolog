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

