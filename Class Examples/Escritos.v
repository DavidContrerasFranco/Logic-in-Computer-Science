(*
Si no hay control de nacimientos, entonces la población crece ilimitadamente.
Pero si la población crece ilimitadamente, aumentará el índice de pobreza.

Por consiguiente, si no hay control de nacimientos, aumentará el índice de pobreza.

N: Hay control de nacimientos. 
P: La población crece ilimitadamente,
I: Aumentará el índice de pobreza. 
*)

Section Pobreza.

Variables N P I: Prop.

Hypothesis H0: ~N -> P.
Hypothesis H1: P -> I.

Theorem QUE_PASA: ~N -> I.
Proof.
intro.
apply H1.
apply H0.
assumption.
Qed.

End Pobreza.

(*
Si Dios fuera capaz de evitar el mal y quisiera hacerlo, lo haría.
Si Dios fuera incapaz de evitar el mal, no sería omnipotente.
Si no quisiera evitar el mal sería malévolo.
Dios no evita el mal.
Si Dios existe, es omnipotente y no es malévolo.
Luego, Dios no existe.

C:  Dios es capaz de evitar el mal.
Q:  Dios quiere evitar el mal.
Om: Dios es omnipotente.
M:  Dios es malévolo.
P:  Dios evita el mal.
E:  Dios existe.

Tomado del Problema del Mal - Epicuro.
*)

Section Dios.

Variables C Q Om M P E: Prop.

Hypothesis H0: C /\ Q -> P.
Hypothesis H1: ~C -> ~Om.
Hypothesis H2: ~Q -> M.
Hypothesis H3: ~P.
Hypothesis H4: E -> Om /\ ~M.

Theorem EPICURO: ~E.
Proof.
intro.
apply H1.
intro.
apply H4.
assumption.
apply H2.
intro.
apply H3.
apply H0.
split.
assumption.
assumption.
apply H4.
assumption.
Qed.

End Dios.