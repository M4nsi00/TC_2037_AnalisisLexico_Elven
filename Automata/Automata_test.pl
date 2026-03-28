%Author: Sebastian Mansilla Cots
%Date: 23/03/2026
%Project: Lexical Analysis Implementation (Elven language)
%Purpose of the project: Test cases to show that the Automata works


%Load automata
:- ["Automata_elven.pl"].

%True cases
test_1:-
 is_elven(coron).

test_2:-
 is_elven(cormarë).

test_3:-
 is_elven(craban).

test_4:-
 is_elven(cú).

test_5:-
 is_elven(cuivie).

%False cases

test_6:-
 \+ is_elven(cormare).

test_7:-
 \+ is_elven(cu).

test_8:-
 \+ is_elven(comala).

test_9:-
 \+ is_elven(carrucel).
    
test_10:-
 \+ is_elven(xyzcoron).

test_11:-
 \+ is_elven(xyzcormarë).

test_12:-
 \+ is_elven(xyzcraban).

test_13:-
 \+ is_elven(xyzcú).

test_14:-
 \+ is_elven(xyzcuivie).

test_15:-
 \+ is_elven(xyzcoronxyz).

test_16:-
 \+ is_elven(xyzcrabanxyz).

test_17:-
 \+ is_elven(xyzcúxyz).

test_18:-
 \+ is_elven(xyzcuiviexyz).

test_19:-
 \+ is_elven(coronxyz).

test_20:-
 \+ is_elven(cormarëxyz).

test_21:-
 \+ is_elven(crabanxyz).

test_22:-
 \+ is_elven(cúxyz).

test_23:-
 \+ is_elven(cuiviexyz).

%Run tests
run_tests:-
 (test_1 ; true),
 (test_2 ; true),
 (test_3 ; true),
 (test_4 ; true),
 (test_5 ; true),
 (test_6 ; true),
 (test_7 ; true),
 (test_8 ; true),
 (test_9 ; true),
 (test_10 ; true),
 (test_11 ; true),
 (test_12 ; true),
 (test_13 ; true),
 (test_14 ; true),
 (test_15 ; true),
 (test_16 ; true),
 (test_17 ; true),
 (test_18 ; true),
 (test_19 ; true),
 (test_20 ; true),
 (test_21 ; true),
 (test_22 ; true),
 (test_23 ; true).