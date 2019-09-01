/**
 * @file main.pl
 * @version 0.1
 * @authors angelortizv, isolis2000, jesquivel48
 * @brief
 */

:-consult('application_db').
:- style_check(-singleton).


% BNF --------------------------------------------------------------------

oracion(A,B):-
	sintagma_nominal(A,C),
	sintagma_verbal(C,B).

sintagma_nominal(A,B):-
	determinante_m(A,C),
	sustantivo_m(C,B).
sintagma_nominal(A,B):-
	determinante_f(A,C),
	sustantivo_f(C,B).
sintagma_nominal(A,B):-
	determinante_n(A,C),
	sustantivo_f(C,B).
sintagma_nominal(A,B):-
	determinante_n(A,C),
	sustantivo_m(C,B).

sintagma_verbal(A,B):-
	verbo(A,B).
sintagma_verbal(A,B):-
	verbo(A,C),
	sintagma_nominal(C,B).

sintagma_saludo(A,B):-
	saludo(A,C),
	nombre(C,B).

% BNF -------------------------------------------------------------------

inicio():-
	input_to_list(L),
	sintagma_saludo(L, []),
        writeln('Hola usuario'),
	writeln('¿Cuál es su nombre?'),
	input_to_string(Nombre),
	respuesta_saludo(Nombre).

respuesta_saludo(Nombre):-
	write('Hola '),
	writeln(Nombre),
	writeln('¿En qué lo puedo ayudar?').

input_to_list(L):-
	read_line_to_codes(user_input,Cs),
	atom_codes(A,Cs),
	atomic_list_concat(L,' ',A).

input_to_string(A):-
	read_line_to_codes(user_input,Cs),
	atom_codes(A,Cs).


