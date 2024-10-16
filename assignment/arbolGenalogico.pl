%%
%% Declaraciones
%%

% Mis Padres y hermanos
mujer('Claudia').
mujer('Noemi').
hombre('Rolando').

padre('Rolando','Ronny').
padre('Rolando','Noemi').
padre('Rolando','Paul').

padre('Claudia','Ronny').
padre('Claudia','Noemi').
padre('Claudia','Paul').


% Abuelos y tios maternos
padre('Jesus','Mirna').
padre('Jesus','Yolanda').
padre('Jesus','Claudia').
padre('Jesus','Manuel').

padre('Reinalda','Mirna').
padre('Reinalda','Yolanda').
padre('Reinalda','Claudia').
padre('Reinalda','Manuel').

% Abuelos y tios paternos
padre('Francisco','Pancho').
padre('Francisco','Norma').
padre('Francisco','Rolando').
padre('Francisco','Rene').

padre('Amalia','Pancho').
padre('Amalia','Norma').
padre('Amalia','Rolando').
padre('Amalia','Rene').

% Primos maternos
padre('Yolanda','Marcos').
padre('Manuel','Diego').
padre('Mirna','Carlos').

% Primos paternos
padre('Pancho','Paolina').
padre('Rene','Santiago').


% Relaciones
hijo(Hijo,Padre):-
    padre(Padre,Hijo).

% Dos personas son hermanos cuando comparten al mismo padre
hermanos(Hijo1,Hijo2):-
    padre(Padre,Hijo1),
    padre(Padre,Hijo2),
    Hijo1 \== Hijo2.
    
% Madre cuando el padre del hijo sea mujer
madre(Padre,Hijo):-
    mujer(Padre),
    padre(Padre,Hijo).
    
% Una persona es tu tio cuando el es hermano de tu padre
tio(Tio,Sobrino):-
    hermanos(Tio,Padre),
    padre(Padre,Sobrino).
    
% Una persona es tu primo cuando sus padres son hermanos
primo(Primo1,Primo2):-
    padre(Padre1,Primo1),
    padre(Padre2,Primo2),
    hermanos(Padre1,Padre2).
    
% Una persona es tu abuelo cuando es el padre de tu padre
abuelo(Abuelo,Nieto):-
    padre(Abuelo,Padre),
    padre(Padre,Nieto).
