/**
 * @file main.pl
 * @version 0.1
 * @authors angelortizv, isolis2000, jesquivel48
 * @brief
 */

:-consult('application_db').
:-style_check(-singleton).

% BNF ---------------------------------------------------------------------------------------------

oracion(A,B):-
	sintagma_nominal(A,C),
	sintagma_verbal(C,B).
oracion(A,B):-
	sintagma_nominal(A,C),
	negacion(C,D),
	sintagma_verbal(D,B).

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
	nombrePrograma(C,B).

% BNF ---------------------------------------------------------------------------------------------

inicio():-
	input_to_list(L),
	sintagma_saludo(L, []),
    writeln('Hola usuario'),
	writeln('¿Cuál es su nombre?'),
	input_to_string(Nombre),
	respuesta_saludo(Nombre),
	validacion_gramatica().

validacion_gramatica():-
	input_to_list(Oracion),
	oracion(Oracion,[]),
	respuesta_validacion_gramatica(), !.

validacion_gramatica():-
	writeln('Oración gramaticalmente incorrecta'),nl,
	writeln('Escriba de nuevo su oración').
	validacion_gramatica().

respuesta_validacion_gramatica():-
	writeln('Oración gramaticalmente correcta').

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

obtenerCausas(X,A):-
	split_string(A, "', ,?" ,"', ,?", L),
	eliminarPrimeros(L,Y,7),
	atomic_list_concat(Y, ' ', X),
	causas(X).

obtenerReferencias(X,A):-
	split_string(A, "', ,?" ,"', ,?", L),
	eliminarPrimeros(L,Y,6),
	atomic_list_concat(Y, ' ', X),
	referencias(X).

eliminarPrimeros(L,Y,B):- length(X, B), append(X,Y,L).

causas(A):-
	write('Las principales causas que pueden estar asociadas a: '),
	write(A), write(" son:"), nl,nl,
	causa(B,A),
	write(B),nl,
	fail.

referencias(A):-
	write('Algunas referencias para su problema son: '),nl,
	causa(B,A),
	write(B),nl,
	fail.

conversacion():-
	inicio(),
	write("Responda con si o no a las siguientes preguntas"),nl,
	fail.

start():-
	sleep(0.02),
		write('||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||'),nl,
		sleep(0.02),
		write('||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||'),nl,
		sleep(0.02),
		write("|||||||||||||||||||||||| Call Center Log |||||||||||||||||||||||||"),nl,
		sleep(0.02),
		write('||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||'),nl,
		sleep(0.02),
		write('||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||'),nl,
	conversacion().	

?- write(" "),nl.
?- write("Sistema desarrollado por: angelortizv, isolis2000, jesquivel48"),nl.
?- write("Inserte start() para iniciar el sistema experto."),nl,nl.