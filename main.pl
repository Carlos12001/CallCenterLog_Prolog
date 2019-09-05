/**
 * @file main.pl
 * @version 0.1
 * @authors angelortizv, isolis2000, jesquivel48
 * @brief
 */

:-consult('application_db').
:-style_check(-singleton).
:-dynamic(soluciones/1).

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

validacion_gramatical():-
	input_to_list(Oracion),
	oracion(Oracion,[]),
	% respuesta_validacion_gramatical(), 
	!.

validacion_gramatical():-
	writeln('Oración gramaticalmente incorrecta'),nl,
	writeln('Escriba de nuevo su oración').
	validacion_gramatical().

respuesta_validacion_gramatical():-
	writeln('Oración gramaticalmente correcta').

respuesta_saludo(Nombre):-
	write('Hola '),
	writeln(Nombre),
	writeln('¿En qué lo puedo ayudar?').

respuesta_despedida():-
	write('¿Algo más en que pueda servirle?'),
	input_to_string(Respuesta),
	fail.

input_to_list(L):-
	read_line_to_codes(user_input,Cs),
	atom_codes(A,Cs),
	atomic_list_concat(L,' ',A).
input_to_string(A):-
	read_line_to_codes(user_input,Cs),
	atom_codes(A,Cs).

concatenar([],L,L).
concatenar([X|L1],L2,[X|L3]):- 
	concatenar(L1,L2,L3).

eliminar_primeros(L,Y,B):- length(X, B), append(X,Y,L).

obtener_causas(X,A):-
	split_string(A, "', ,?" ,"', ,?", L),
	eliminar_primeros(L,Y,7),
	atomic_list_concat(Y, ' ', X),
	causas(X).

obtener_referencias(X,A):-
	split_string(A, "', ,?" ,"', ,?", L),
	eliminarPrimeros(L,Y,6),
	atomic_list_concat(Y, ' ', X),
	referencias(X).

causas(A):-
	write('Las principales causas que pueden estar asociadas a: '),
	write(A), write(' son:'), nl,nl,
	causa(B,A),
	write(B),nl,
	fail.

referencias(A):-
	write('Algunas referencias para su problema son: '),nl,
	causa(B,A),
	write(B),nl,
	fail.

raiz('esta desconectada la computadora',computadora):-
	hoja_izquierda('esta desconectada la computadora'), !.
raiz('el tomacorriente no funciona',computadora):-
	hoja_izquierda('el tomacorriente no funciona'), !.
raiz('los cables no estan bien conectados',computadora):-
	hoja_izquierda('los cables no estan bien conectados'), !.
raiz('no hay solucion',computadora):-
	hoja_izquierda('no hay solucion'), !.

hoja_izquierda(B):-
	soluciones(L),
	buscar_solucion(B,R,L), !,
	consulta_general(no,R).
hoja_izquierda(B):-
    pregunta(E,B),
    consulta_no(B, E).

hoja_derecha(B):-
	soluciones(L),
	buscar_solucion(B,R,L), !,
	consulta_general(si,R).
hoja_derecha(B):-
    pregunta(E,B),
    consulta_si(B,E).

consulta_no(A, P):-
    write(P), nl,
    read(R), nl,
    soluciones(L),
    concatenar(L, [A, R], NL),
    retractall(soluciones(_)),
    assert(soluciones(NL)),
    consulta_general(no, R).

consulta_si(A, P):-
    write(P), nl,
    read(R), nl,
    soluciones(L),
    concatenar(L, [A, R], NL),
    retractall(soluciones(_)),
    assert(soluciones(NL)),
    consulta_general(si, R).
	
consulta_general(R,R).

buscar_solucion(P,R,[P, R|_]).
buscar_solucion(P,R,[_|C]):-
    buscar_solucion(P,R,C).

conversacion():-
	write('Responda con si. o no. a las siguientes preguntas'),nl,nl,
	retractall(soluciones(_)),
	assert(soluciones([])),
	raiz(A,computadora),
	solucion(B,A),
	write(B),nl.

inicio():-
	sleep(0.02),
		write('||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||'),nl,
		sleep(0.02),
		write('||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||'),nl,
		sleep(0.02),
		write('|||||||||||||||||||||||| Call Center Log |||||||||||||||||||||||||'),nl,
		sleep(0.02),
		write('||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||'),nl,
		sleep(0.02),
		write('||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||'),nl,

	input_to_list(L),
	sintagma_saludo(L, []),
    writeln('Hola usuario'),
	writeln('¿Cuál es su nombre?'),
	input_to_string(Nombre),
	respuesta_saludo(Nombre),
	validacion_gramatical(),nl,
	write('Para CallCenterLog es un gusto ayudarle con su problema,'),nl,
	conversacion(),
	respuesta_despedida().	

?- write(' '),nl.
?- write('Sistema desarrollado por: angelortizv, isolis2000, jesquivel48'),nl.
?- write('Inserte inicio(). para iniciar con el sistema experto.'),nl,nl.