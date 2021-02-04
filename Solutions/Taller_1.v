Require Import Arith.


(*Primer Punto*)
Definition primerPunto (n:nat) := (n + 10)*(n+10).

(*Segundo Punto*)

Definition sumaCubos (n : nat)(m : nat) := (n * n *n) + (m*m*m).

(*Tercer Punto*)
Definition sumasProductos (a : nat) (b : nat)(c : nat) (d : nat) := (a+b+c+d)*(a*b*c*d).

(*Cuarto Punto*)
Search nat.
Search bool.

Compute Nat.double.
(*Esta funcion lo que hace es retornar un numero multiplicado por 2*)

Compute Nat.div2.
(*Esta funcion retorna el resultado de dividir un numero n entre dos, aplicacndo la 
funcion piso en caso de que n sea un numero impar*)

Compute Nat.leb.
(*Esta funcion recibe dos numeros a y b, retorna a true si a <= b
de lo contrario tetorn false*)

Print Nat.double.
Print Nat.div2.
Print Nat.leb.

(*Quinto Punto*)
Definition paridad (n : nat):= Nat.leb n (Nat.double (Nat.div2 n)).

(*Sexto Punto*)
Definition iter2p (funcion : nat*nat -> nat*nat)(p : nat*nat):= funcion (funcion p).
Compute (iter2p (fun p => (snd p, fst p)) (1, 2),
iter2p (fun p => (fst p + 1, snd p + fst p + 1)) (0,0)).

(*Septimo Punto*)
Definition composicion(f : nat -> nat)(g : nat -> nat)(var : nat) := f (g var).

(*Octavo Punto*)
Definition sumaParNumero (a : nat*nat):= fst a + snd a.

(*Noveno Punto*)
(*Con numeros muy grandes da stack overflow*)
Definition sumaCubosTrio (a : nat*nat*nat) := sumaCubos (fst (fst a)) (snd (fst  a)) + (snd a)*(snd a)*(snd a).

(*Decimo Punto*)
Definition diez(a : nat) :=
if paridad a then Nat.double a
else a + 1.

(*Onceavo Punto*)
Definition sumaProductos (a : nat*nat) := (fst a + snd a, fst a * snd a).

(*Doceavo Punto*)
Definition doce (g : nat -> nat) (f : nat -> nat -> nat) (a : nat*nat) := (g (fst a), f (fst a) (snd a)).

(*Treceavo Punto*)
Definition trece (a : nat*nat)(f : nat->nat) :=
if Nat.leb (fst a)(snd a) then f (fst a)
else (snd a) + 1.

(*Catorceavo Punto*)
Inductive LP : Set :=
|p : LP
|q : LP
|r : LP
|negacion : LP
|disyuncion : LP -> LP
|conjuncion : LP -> LP
|implicacion : LP -> LP
|dobleImplicacion : LP -> LP.

(*Quinceavo Punto*)
Inductive arbol : Set :=
|vacio : arbol
|Nodo : arbol -> nat -> arbol -> arbol.
