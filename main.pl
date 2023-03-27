% Archivo principal para correr CallCenterLog.

:-consult('db').
:-style_check(-singleton).
:-dynamic(soluciones/1).
:-set_prolog_flag(verbose, silent).

% BNF -------------------------------------------------------------------------------------------------------------------------------------

% Que hace : Esta funcion recibe una lista de palabras y una lista vacia como parametros, y verifica si la lista es una oracion gramaticalmente correcta segun la estructura establecida.
% Nombre de Regla : oracion(A,B)
% Parametros : A (lista de palabras para revisar), B (lista vacia)
% Uso : Se utiliza para validar la estructura de una oracion en un programa de procesamiento de lenguaje natural. La funcion utiliza reglas sintacticas para determinar si la lista de palabras se ajusta a la estructura de una oracion en la gramatica especificada.
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

% Que hace : Esta funcion recibe una lista de palabras como parametro y utiliza reglas sintacticas para identificar y validar la estructura de un sintagma nominal gramaticalmente correcto.
% Nombre de Regla : sintagma_nominal(A,B)
% Parametros : A (lista de palabras para revisar), B (lista vacia)
% Uso : Esta funcion se utiliza en procesamiento de lenguaje natural para validar la estructura sintactica de un sintagma nominal en una oracion. La funcion verifica si la lista de palabras cumple con la estructura de un sintagma nominal en la gramatica especificada. La funcion utiliza reglas sintacticas para validar si la lista de palabras contiene un determinante y un sustantivo en el genero gramatical correspondiente.
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

% Que hace : Esta funcion recibe una lista de palabras como parametro y utiliza reglas sintacticas para identificar y validar la estructura de un sintagma verbal gramaticalmente correcto.
% Nombre de Regla : sintagma_verbal(A,B)
% Parametros : A (lista de palabras para revisar), B (lista vacia)
% Uso : Esta funcion se utiliza en procesamiento de lenguaje natural para validar la estructura sintactica de un sintagma verbal en una oracion. La funcion verifica si la lista de palabras cumple con la estructura de un sintagma verbal en la gramatica especificada. La funcion utiliza reglas sintacticas para validar si la lista de palabras contiene un verbo y, opcionalmente, un sintagma nominal.
sintagma_verbal(A,B):-
	verbo(A,B).
sintagma_verbal(A,B):-
	verbo(A,C),
	sintagma_nominal(C,B).

% Que hace : Esta funcion recibe una lista de palabras como entrada y utiliza reglas sintacticas para validar si la entrada contiene un saludo y el nombre del programa.
% Nombre de Regla : sintagma_saludo(B)
% Parametros : B (lista de palabras vacia para almacenar la salida)
% Uso : Esta funcion se utiliza en procesamiento de lenguaje natural para validar si la entrada de usuario contiene un saludo y el nombre del programa. La funcion utiliza reglas sintacticas para verificar si la entrada es un saludo y si contiene el nombre del programa especificado. Si la entrada es un saludo y contiene el nombre del programa, se almacena en la lista de palabras vacia "B".
sintagma_saludo(B):-
	input_to_list(L),
	saludo(L,C),
	nombre_programa(C,B),!.
sintagma_saludo(B):-
	sintagma_saludo([]).

% Que hace : La funcion "validacion_gramatical(Oracion)" recibe una oracion como entrada y utiliza la regla "oracion(Oracion,[])" para validar si la oracion cumple con la gramatica especificada. Si la oracion es valida, se devuelve verdadero. Si no, se imprime un mensaje de error y se solicita al usuario que vuelva a ingresar la oracion.
% Nombre de Regla : validacion_gramatical(Oracion)
% Parametros : Oracion (la oracion ingresada por el usuario)
% Uso : Esta funcion se utiliza en procesamiento de lenguaje natural para validar si una oracion cumple con la gramatica especificada. Si la oracion es valida, se puede continuar con el procesamiento. Si no, se solicita al usuario que vuelva a ingresar la oracion en un formato valido.
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

% Que hace : La funcion "respuesta_saludo(Nombre)" recibe el nombre del usuario como entrada y devuelve un mensaje de bienvenida personalizado con el nombre del usuario.
% Nombre de Regla : respuesta_saludo(Nombre)
% Parametros : Nombre (el nombre del usuario)
% Uso : Esta funcion se utiliza en procesamiento de lenguaje natural para dar la bienvenida al usuario y proporcionar una respuesta personalizada.
respuesta_saludo(Nombre):-
	write('Bienvenido '),
	writeln(Nombre),
	writeln('.¿En que lo puedo ayudar?').

% Que hace : La funcion "respuesta_despedida()" se utiliza para manejar la respuesta del usuario cuando se le pregunta si tiene algun otro problema en el que podamos ayudar. Si el usuario responde "no", se muestra un mensaje de agradecimiento y se finaliza el programa. Si el usuario responde "si", se reinicia el programa.
% Nombre de Regla : respuesta_despedida()
% Parametros : Ninguno
% Uso : Esta funcion se utiliza en procesamiento de lenguaje natural para manejar la respuesta del usuario cuando se le pregunta si tiene algun otro problema en el que podamos ayudar.
respuesta_despedida():-
	writeln('¿Tiene algun otro problema en el que le pueda ayudar?'),nl,
	read(R),
	opcion_despedida(R).
opcion_despedida(R):-
	consulta_general(no,R),nl,writeln('Gracias por preferir Samsung'),nl,!;
	inicio_aux().

% Que hace : La funcion "lista_vacia(List, Empty)" recibe una lista y devuelve un valor logico que indica si la lista esta vacia o no.
% Nombre de Regla : lista_vacia(List, Empty)
% Parametros : List (la lista a verificar), Empty (valor logico que indica si la lista esta vacia o no)
% Uso : Esta funcion se utiliza en procesamiento de lenguaje natural para verificar si una lista esta vacia. Devuelve verdadero si la lista esta vacia y falso en caso contrario.
lista_vacia(List, Empty) :-
    length(List, Len),
    (   Len =< 1
    ->  Empty = true
    ;   Empty = false
    ).

% Que hace : La funcion "input_to_list(L)" lee una linea de entrada desde la entrada estandar, la convierte en una cadena y la divide en una lista de palabras.
% Nombre de Regla : input_to_list(L)
% Parametros : L (la lista de palabras resultante)
% Uso : Esta funcion se utiliza en procesamiento de lenguaje natural para convertir una entrada del usuario en una lista de palabras.
input_to_list(L):-
	read_line_to_codes(user_input,Cs),
	atom_codes(A,Cs),
	atomic_list_concat(L,' ',A).

% Que hace : La funcion "input_to_string(A)" lee una linea de entrada desde la entrada estandar y la convierte en una cadena.
% Nombre de Regla : input_to_string(A)
% Parametros : A (la cadena resultante)
% Uso : Esta funcion se utiliza en procesamiento de lenguaje natural para convertir una entrada del usuario en una cadena.
input_to_string(A):-
	read_line_to_codes(user_input,Cs),
	atom_codes(A,Cs).

% Que hace : La funcion "list_to_string(List, String)" convierte una lista de palabras en una cadena.
% Nombre de Regla : list_to_string(List, String)
% Parametros : List (la lista de palabras a convertir), String (la cadena resultante)
% Uso : Esta funcion se utiliza en procesamiento de lenguaje natural para convertir una lista de palabras en una cadena.	
list_to_string(List, String):-
	atomic_list_concat(List, ' ', String).

% Que hace : La funcion "concatenar([],L,L)" concatena dos listas.
% Nombre de Regla : concatenar([],L,L)
% Parametros : Ninguno
% Uso : Esta funcion se utiliza en procesamiento de lenguaje natural para concatenar dos listas.
concatenar([],L,L).
concatenar([X|L1],L2,[X|L3]):-
	concatenar(L1,L2,L3).

% Que hace : La funcion "eliminar_primeros(L,Y,B)" elimina los primeros B elementos de la lista L y devuelve el resto de la lista en la variable Y.
% Nombre de Regla : eliminar_primeros(L,Y,B)
% Parametros : L (la lista de entrada), Y (la lista resultante), B (el numero de elementos a eliminar)
% Uso : Esta funcion se utiliza en procesamiento de lenguaje natural para eliminar los primeros B elementos de una lista y obtener la lista resultante.
eliminar_primeros(L,Y,B):- length(X, B), append(X,Y,L).

% Que hace : La funcion "obtener_elemento([Y|], 1, Y)" devuelve el primer elemento de una lista.
% Nombre de Regla : obtener_elemento([Y|_], 1, Y)
% Parametros : La lista de entrada, la posicion del elemento a obtener y la variable donde se almacenara el resultado
% Uso : Esta funcion se utiliza en procesamiento de lenguaje natural para obtener el primer elemento de una lista.
obtener_elemento([Y|_], 1, Y).
obtener_elemento([_|Xs], N, Y):-
		N2 is N - 1,
		obtener_elemento(Xs, N2, Y).
		
% Que hace : La funcion "obtener_causas(X,A)" extrae el tema de la oracion de entrada y llama a la funcion "causas(X)" para mostrar las causas asociadas.
% Nombre de Regla : obtener_causas(X,A)
% Parametros : X (el tema extraido), A (la oracion de entrada)
% Uso : Esta funcion se utiliza en procesamiento de lenguaje natural para extraer el tema de la oracion de entrada y mostrar las causas asociadas.
obtener_causas(X,A):-
	split_string(A, "', ,?" ,"', ,?", L),
	eliminar_primeros(L,Y,4),
	atomic_list_concat(Y, ' ', X),
	causas(X).

% Que hace : La funcion "causas(A)" muestra las causas asociadas al tema especificado.
% Nombre de Regla : causas(A)
% Parametros : A (el tema)
% Uso : Esta funcion se utiliza en procesamiento de lenguaje natural para mostrar las causas asociadas a un tema especifico.
causas(A):-
	write('Las principales causas que pueden estar asociadas a: '),
	write(A), write(' son:'), nl,nl,
	causa(B,A),
	write(B),nl.


% Que hace : La funcion "obtener_referencias(X,A)" extrae el tema de la oracion de entrada y llama a la funcion "referencias(X)" para mostrar las referencias asociadas.
% Nombre de Regla : obtener_referencias(X,A)
% Parametros : X (el tema extraido), A (la oracion de entrada)
% Uso : Esta funcion se utiliza en procesamiento de lenguaje natural para extraer el tema de la oracion de entrada y mostrar las referencias asociadas.
obtener_referencias(X,A):-
	split_string(A, "', ,?" ,"', ,?", L),
	eliminar_primeros(L,Y,5),
	atomic_list_concat(Y, ' ', X),
	referencias(X).

% Que hace : La funcion "referencias(A)" muestra las referencias asociadas al tema especificado.
% Nombre de Regla : referencias(A)
% Parametros : A (el tema)
% Uso : Esta funcion se utiliza en procesamiento de lenguaje natural para mostrar las referencias asociadas a un tema especifico.
referencias(A):-
	write('Claro, cuento con referencias a las que puede consultar.'),
	write('Algunas referencias para su problema son: '),nl,
	referencia(E,A),
	write(E),nl.

% Que hace : La funcion "hoja_izquierda(B)" solicita una pregunta relacionada y llama a la funcion "consulta_no(B, D)".
% Nombre de Regla : hoja_izquierda(B)
% Parametros : B (la respuesta a la pregunta anterior)
% Uso : Esta funcion se utiliza en procesamiento de lenguaje natural para solicitar una pregunta relacionada y llamar a la funcion "consulta_no(B, D)".
hoja_izquierda(B):-
    pregunta(D,B),
    consulta_no(B, D).

% Que hace : La funcion "consulta_no(A, D)" solicita una respuesta "no" a una pregunta relacionada y actualiza la lista de soluciones.
% Nombre de Regla : consulta_no(A, D)
% Parametros : A (la respuesta a la pregunta anterior), D (la pregunta relacionada)
% Uso : Esta funcion se utiliza en procesamiento de lenguaje natural para solicitar una respuesta "no" a una pregunta relacionada y actualizar la lista de soluciones.
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

% Que hace : La funcion "conversacion(Oracion,'causas')" extrae el tema de la oracion de entrada, llama a la funcion "obtener_causas(_,Oracion)" y muestra la respuesta de despedida.
% Nombre de Regla : conversacion(Oracion,'causas')
% Parametros : Oracion (la oracion de entrada), 'causas' (el tipo de consulta)
% Uso : Esta funcion se utiliza en procesamiento de lenguaje natural para extraer el tema de la oracion de entrada, obtener las causas asociadas y mostrar la respuesta de despedida.
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

% Ejecuta el SE (Sistema Experto) 
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
?- write('Escriba inicio(). para iniciar la atencion al cliente.'),nl.
?- write('Para iniciar una conversacion empieza por: '),nl.
?- write('hola sam'),nl.
