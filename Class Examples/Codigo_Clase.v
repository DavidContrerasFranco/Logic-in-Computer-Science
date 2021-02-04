Require Import Arith.

Compute 16.

Compute 15+23.

Compute 17*5.

Search nat.

Check 5.
Check nat.
Check gt.

Compute gt 4.
Compute gt 4 5.

Check gt 4.

Compute Nat.double 8.

Check Nat.double.

Definition tres:nat := 3.

Compute tres*5.

Definition mas (a:nat)(b:nat) := a+b+tres.

(* Compute 4 mas 5. *)

Compute mas 4 2.
Check mas.
Check mas 4 tres.

Search nat.

Definition uno := S 0.

Compute uno.
Print uno.
Check uno.

Compute S.

Definition five := S(S(S(S(S(0))))).
Compute five.

Definition double (m:nat) := plus m m.

Compute double 8.

Compute plus.

Inductive NoTieneSentido : Set := 
|carita_feliz : NoTieneSentido
|carita_triste : NoTieneSentido
|emociones : nat->NoTieneSentido.

Compute emociones 4.

Check nat.