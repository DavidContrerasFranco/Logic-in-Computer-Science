(* 
  PARTE 1:

  A continuacion se propone una serie de lemas para demostrar, reemplazando
  la linea "Admitted" por una secuencia de tacticas terminadas con "Qed".

  Para su solucion se recomiendan las siguientes tacticas:
  intro[s], apply, assumption, split, left, right, destruct, assert.
*)

Section LP1.

Variables P Q R S T : Prop.

(* 1 *)
Lemma weak_peirce : ((((P -> Q) -> P) -> P) -> Q) -> Q.
Proof.
Admitted.

(* 2 *)
Lemma then_1 : (P -> Q) -> (Q -> R) -> P -> R.
Proof.
Admitted.

(* 3 *)
Lemma contraposition : (~P -> ~Q) <-> (~~Q -> ~~P).
Proof.
Admitted.

(* 4 *)
Lemma then_2 : (P -> R) -> P -> Q -> R.
Proof.
Admitted.

(* 5 *)
Lemma then_3 : (P -> Q) -> (P -> R) -> (Q -> R -> S) -> P -> S.
Proof.
Admitted.

End LP1.

Section LP2.

Variables P Q R S T : Prop.

(* 6 *)
Lemma and_assoc : P /\ (Q /\ R) -> (P /\ Q) /\ R.
Proof.
Admitted.

(* 7 *)
Lemma and_imp_dist : (P -> Q) /\ (R -> S) -> P /\ R -> Q /\ S.
Proof.
Admitted.

(* 8 *)
Lemma not_contrad :  ~(P /\ ~P).
Proof.
Admitted.

(* 9 *)
Lemma or_and_not : (P \/ Q) /\ ~P -> Q.
Proof.
Admitted.

(* 10 *)
Lemma de_morgan_1 : ~(P \/ Q) -> ~P /\ ~Q.
Proof.
Admitted.

(* 11 *)
Lemma de_morgan_2 : ~P /\ ~Q -> ~(P \/ Q).
Proof.
Admitted.

(* 12 *)
Lemma de_morgan_3 : ~P \/ ~Q -> ~(P /\ Q).
Proof.
Admitted.

(* 13 *)
Lemma then_4 : (P -> P -> Q) -> P -> Q.
Proof.
Admitted.

(* Ext0. - Interesante *)
Lemma ext0 : P -> Q -> (0 * 3 = 0).
Proof.
Admitted.

(* Ext1. - Inutil*)
Lemma ext1 : P /\ (Q /\ R) -> (P /\ Q) /\ R.
Proof.
Admitted.

(* Ext2.  - Chevere *)
Lemma ext2 : (P <-> Q) -> (Q <-> R) -> (P <-> R).
Proof.
Admitted.

(* Ext3. - Genial *)
Lemma ext3 : P \/ (Q /\ R) <-> (P \/ Q) /\ (P \/ R).
Proof.
Admitted.

Lemma imps : ~P \/ P.
Proof.
Admitted.

End LP2.


(* 14 *)
Section S0.

Variables P Q : Prop.


Hypothesis H0 : P -> Q.
Hypothesis H1 : ~P -> Q.

Lemma weak_exm : ~~Q.
Proof.
Admitted.

End S0.




(*
  PARTE 2:

  A continuacion se propone una serie de especificaciones para determinados sistemas.
  Debe formalizar dichas especificaciones y probar el teorema dado.

15. La maquina dispensadora requiere de una moneda para dar un cafe. Introduje una 
    moneda en la máquina. Entonces, obtengo un cafe.
*)

Section MaquinaCafe.

Variables Moneda Cafe: Prop.
Hypothesis HMaquina: Moneda -> Cafe.
Hypothesis HDinero: Moneda.

Theorem QuieroMiCafe: Cafe.
Proof.
apply HMaquina.
assumption.
Qed.

End MaquinaCafe.

(*
  1.
  Aprobaré lógica, si Dios quiere. Aprobaré lógica si y sólo si estudio y hago todos
  los ejercicios. Sin embargo, no he hecho los ejercicios, así que Dios no quiere
  que apruebe lógica.

  A : Aprobaré lógica.
  D : Dios quiere que apruebe lógica.
  E : Estudio.
  H : Hago todos los ejercicios.
*)
Section Logic.
End Logic.