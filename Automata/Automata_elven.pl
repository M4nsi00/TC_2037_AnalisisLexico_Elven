%Author: Sebastian Mansilla Cots
%Date: 11/03/2026
%Project: Lexical Analysis Implementation (Elven language)
%Purpose of the project: Lexical analysis parser that uses a DFA
%to detect specific words of the elven language.


% Initial State
start(s).

%Define transitions (where,to,with)

%cor (wors for coron and cormarë)
transition(s,q0,c).
transition(q0,q1,o).
transition(q1,q2,r).

%coron
transition(q2,q3,o).
transition(q3,qf,n).

%cormarë
transition(q2,q4,m).
transition(q4,q5,a).
transition(q5,q6,r).
transition(q6,qf,ë).

%craban
transition(q0,q7,r).
transition(q7,q8,a).
transition(q8,q9,b).
transition(q9,q10,a).
transition(q10,qf,n).

%cú
transition(q0,qf,ú).

%cuivie
transition(q0,q11,u).
transition(q11,q12,i).
transition(q12,q13,v).
transition(q13,q14,i).
transition(q14,qf,e).

%Final states
final_state(qf).

%Automata
is_elven(Word) :-
 atom_chars(Word, List),
 start(S),
 write(Word),
 parse_list(S, List).

%Base Case 1, the list is empty and the current state is a final_state
parse_list(State, []) :-
 final_state(State),
 write(': Is part of the Elven Language'), nl.

%Base Case 2, the list is empty and the current state is NOT a final_state
parse_list(State, []) :-
 \+ final_state(State),
 write(': Is NOT a part of the Elven Language'), nl.

%Recursive Case
parse_list(State, [H|T]):-
 transition(State,X,H),
 parse_list(X,T).

%False State, where the character doesn't have a state to go to, the word is consequently
%NOT part of the language
parse_list(State, [H|_]):-
 \+ transition(State,H,_),
 write(': Is NOT a part of the Elven Language'), nl,!.