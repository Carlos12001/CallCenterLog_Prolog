% Archivo principal para correr CallCenterLog.

:-consult('application_db').
:-style_check(-singleton).
:-dynamic(soluciones/1).
:- set_prolog_flag(verbose, silent).

% BNF -------------------------------------------------------------------------------------------------------------------------------------

% Descripcion		:	recibe una lista de palabras y una lista vacia y verifica si es una oracion gramaticalmente correcta segun la estructura establecida
% Nombre de Regla	:	oracion([A],[B])
% Parametro			:	lista para revisar y lista vacia
% Uso				:	se utiliza para validar oraciones
oracion(A,B):-
	sintagma_nominal(A,C),
	sintagma_verbal(C,B).
oracion(A,B):-
	sintagma_nominal(A,C),
	negacion(C,D),
	sintagma_verbal(D,B).
oracion(A,B):-
	inicio_cr(A,C),
	sintagma_nominal(C,D),
	sintagma_verbal(D,B).
oracion(A,B):-
	inicio_cr(A,C),
	sintagma_nominal(C,D),
	negacion(D,E),
	sintagma_verbal(E,B).

% Descripcion		:	recibe una lista de palabras y una lista vacia; elimina el primer sintagma nominal encontrado y devuelve el resto de las palabras
% Nombre de Regla	:	sintagma_nominal([A],[B])
% Parametro			:	lista a revisar y lista vacia
% Uso				:	se utiliza para encontrar el primer sintagma nominal en una lista de palabras
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

% Descripcion		:	recibe una lista de palabras y una lista vacia; elimina el primer sintagma verbal encontrado y devuelve el resto de las palabras
% Nombre de Regla	:	sintagma_verbal([A],[B])
% Parametro			:	lista a revisar y lista vacia
% Uso				:	se utiliza para encontrar el primer sintagma verbal en una lista de palabras
sintagma_verbal(A,B):-
	verbo(A,B).
sintagma_verbal(A,B):-
	verbo(A,C),
	sintagma_nominal(C,B).

% Descripcion		:	recibe una lista de palabras y una lista vacia y verifica si estas palabras componen un saludo al programa (Ej. “hola log”)
% Nombre de Regla	:	sintagma_saludo([B])
% Parametro			:	lista a revisar y lista vacia
% Uso				:	se utiliza para encontrar el primer sintagma saludo en una lista de palabras
sintagma_saludo(B):-
	input_to_list(L),
	saludo(L,C),
	nombre_programa(C,B),!.
sintagma_saludo(B):-
	sintagma_saludo([]).

% Validacion Gramatical, Saludo, Despedida ------------------------------------------------------------------------------------------------

% Descripcion		:	valida si la oracion digitada por el usuario esta gramaticalmente correcta segun el BNF establecido
% Nombre de Regla	:	validacion_gramatical()
% Parametro			:	lista a revisar
% Uso				:	Se utiliza para verificar gramaticalmente una oracion, de lo contrario, devolver un mensaje al usuario
validacion_gramatical(Oracion):-
	oracion(Oracion,[]),
	!.
validacion_gramatical(Oracion):-
	is_list(Oracion),
	lista_vacia(Oracion,true),
	writeln('En que lo puedo ayudar?'),nl,
	inicio_aux(),
	!.
validacion_gramatical(Oracion):-
	writeln('Error en la gramatica de la oracion'),nl,
	writeln('Por favor, escriba su oracion de nuevo.'),
	inicio_aux(),
	!.

respuesta_saludo(Nombre):-
	write('Bienvenido '),
	writeln(Nombre),
	writeln('.¿En que lo puedo ayudar?').

% creo que aqui se puede quitar el resto si o no
respuesta_despedida():-
	writeln('¿Tiene algun otro problema en el que le pueda ayudar?'),nl,
	read(R),
	opcion_despedida(R).
opcion_despedida(R):-
	consulta_general(no,R),nl,writeln('Gracias por preferir Samsung'),nl,!;
	inicio_aux().

% Operaciones Basicas ------------------------------------------------------------------------------------------------------------

lista_vacia(List, Empty) :-
    length(List, Len),
    (   Len =< 1
    ->  Empty = true
    ;   Empty = false
    ).

input_to_list(L):-
	read_line_to_codes(user_input,Cs),
	atom_codes(A,Cs),
	atomic_list_concat(L,' ',A).
input_to_string(A):-
	read_line_to_codes(user_input,Cs),
	atom_codes(A,Cs).
list_to_string(List, String):-
	atomic_list_concat(List, ' ', String).

concatenar([],L,L).
concatenar([X|L1],L2,[X|L3]):-
	concatenar(L1,L2,L3).

eliminar_primeros(L,Y,B):- length(X, B), append(X,Y,L).

obtener_elemento([Y|_], 1, Y).
obtener_elemento([_|Xs], N, Y):-
		N2 is N - 1,
		obtener_elemento(Xs, N2, Y).


% Causas y referencias --------------------------------------------------------------------------------------------------------------------

% Descripcion		:	Obtiene las causas a un determinado problema
% Nombre de Regla	:	obtener_causas(X,A)
% Parametro			:	problema definido en application_db
% Uso				:
obtener_causas(X,A):-
	split_string(A, "', ,?" ,"', ,?", L),
	eliminar_primeros(L,Y,4),
	atomic_list_concat(Y, ' ', X),
	causas(X).

causas(A):-
	write('Las principales causas que pueden estar asociadas a: '),
	write(A), write(' son:'), nl,nl,
	causa(B,A),
	write(B),nl.

% Descripcion		:	Obtiene las referencias a un determinado problema
% Nombre de Regla	:	obtener_referencias(X,A)
% Parametro			:	probolema definido en application_db
% Uso				:
obtener_referencias(X,A):-
	split_string(A, "', ,?" ,"', ,?", L),
	eliminar_primeros(L,Y,5),
	atomic_list_concat(Y, ' ', X),
	referencias(X).

referencias(A):-
	write('Claro, cuento con referencias a las que puede consultar.'),
	write('Algunas referencias para su problema son: '),nl,
	referencia(E,A),
	write(E),nl.

% Consultas, Solucion de Problemas, Conversacion usuario-se -------------------------------------------------------------------------------

% Descripcion		:	Envia a consulta_no(A,D) pregunta al usuario sobre determinado problema
% Nombre de Regla	:	hoja_izquierda(B)
% Parametro			:	causa de un problema
% Uso				:	raiz(B,A)
hoja_izquierda(B):-
    pregunta(D,B),
    consulta_no(B, D).

% Descripcion		:	concatena las soluciones a un determinado problema
% Nombre de Regla	:	consulta_no(A,P)
% Parametro			:	(causa de un problema, pregunta asociada)
% Uso				:	hoja_izquierda(B)
consulta_no(A, D):-
    write(D), nl,
    read(R), nl,
    soluciones(L),
    concatenar(L, [A, R], NL),
    retractall(soluciones(_)),
    assert(soluciones(NL)),
    consulta_general(no, R).

consulta_caso_base(B):-
	solucion(C,B).
consulta_general(R,R).

% Descripcion		:	Realiza el ciclo de conversacion entre preguntas y respuestas, y despedida
% Nombre de Regla	:	conversascion(Oracion)
% Parametro			:	String de una oracion
% Uso				:	inicio_aux()

conversacion(Oracion,'referencias'):-
	!,
	obtener_referencias(_,Oracion),
	respuesta_despedida().

conversacion(Oracion,'causas'):-
	!,
	obtener_causas(_,Oracion),
	respuesta_despedida().

conversacion(Oracion,_):-
	write('Inicie las respuesta un con si. o no. a las siguientes preguntas'),nl,nl,
	retractall(soluciones(_)),
	assert(soluciones([])),
	% write(Oracion),
	raiz(A,Oracion),
	solucion(B,A),
	write(B),nl,
	respuesta_despedida().

% Ejecutor SE -----------------------------------------------------------------------------------------------------------------------------

encabezado():-
	sleep(0.02),
	write('          *********************** Servicio tecnico de Samsung ***********************          '),nl.


inicio():-
	encabezado(),
	sintagma_saludo([]),
	writeln('Hola, soy la asistente virtual de Samsung me llamo Sam'),
	writeln('Como te llamas?'),
	input_to_string(Nombre),
	respuesta_saludo(Nombre),
	inicio_aux().

inicio_aux():-
	input_to_list(Oracion),
	validacion_gramatical(Oracion),nl,nl,
	writeln('Para el servicio tecnico de Samsung es un gusto ayudarle con su problema,'),nl,
	obtener_elemento(Oracion,2,A),
	removehead(Oracion,B),
	list_to_string(B,Y),
	conversacion(Y,A),nl.	

removehead([_|Tail], Tail).

?- write(' '),nl.
?- write('Escriba inicio(). para iniciar cla atencion al cliente.'),nl.
?- write('Para iniciar una conversacion empieza por: '),nl.
?- write('hola sam'),nl.