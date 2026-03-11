%Author: Sebastian Mansilla Cots
%Date: 11/03/2026
%Project: Lexical Analysis Implementation (Elven language)
%DFA


% Initial State
start(s).

%Define transitions (where,to,with)
transition(s,q0,c).
transition(q0,q1,o).

%coron
transition(q1,q2,r).
transition(q2,q3,o).
transition(q3,q4,n).

%cormarë
transition(q2,q5,m).
transition(q5,q6,a).
transition(q6,q7,r).
transition(q7,q8,ë).

%craban
transition(q0,q9,r).
transition(q9,q10,a).
transition(q10,q11,b).
transition(q11,q12,a).
transition(q12,13,n).

%cú
transition(q0,q14,ú).

%cuivie
transition(q0,q15,u).
transition(q15,q16,i).
transition(q16,q17,v).
transition(q17,q18,i).
transition(q18,q19,e).

%Final states
final_state(q4).
final_state(q8).
final_state(q13).
final_state(q14).
final_state(q19).

%Automata
is_elven(List) :-
 parse_list(Start, List).

%Base Case 1, the list is empty and the current state is a final_state
parse_list(State, []) :-
 final_state(State),
 write('Is part of the Elven Language'), nl.

%Base Case 2, the list is empty and the current state is NOT a final_state
parse_list(State, []) :-
 \+ final_state(State),
 write('Is NOT a part of the Elven Language'), nl.

%Recursive Case
parse_list(State, [H|T]):-
 transition(State,X,H),
 parse_list(X,T).
