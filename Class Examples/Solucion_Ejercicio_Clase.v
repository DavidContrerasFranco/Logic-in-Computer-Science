(*Ejericio 10 . formalizar y r
su validez;

1. Si es falso que si un objeto flota en el agua es menos denso
   que ésta, entonces se puede caminar sobre ella.

2. Es claro que no se puede caminar sobre el agua.

3. Si un objeto es menos denso que el agua entonces puede 
   desplazar una cantidad de agua igual a su propio peso.

4. Un objeto puede desplazar una cantidad de agua igual a su 
   propio peso solo si flota en el agua.

Por lo tanto, un objeto flota en el agua si y solo si 
es menos denso que ésta.*)

Axiom classic : forall P:Prop, P \/ ~ P.

Lemma NNPP : forall p:Prop, ~ ~ p -> p.
Proof.
intros.
elim (classic p).
intro.
assumption.
intro.
elim (H H0).
Qed.

Section razonamiento.
Variables p q r s t : Prop.
Hypothesis H0: p -> (q \/ r).
Hypothesis H1: s -> ~q.
Hypothesis H2: t-> ~r.
Hypothesis H3: p /\ t.
Lemma conclu :q.
Proof.
destruct H0.
destruct H3.
apply H.
apply H.
destruct H2.
apply H3.
apply H.
Qed.
End razonamiento.

Section razonamiento2.

Variables p q r s : Prop.

Lemma neg_ant: (~(p -> q) -> r) -> (~r -> ~~(p -> q)).
Proof.
intros.
intro.
apply H0.
apply H.
assumption.
Qed.

Hypothesis H0: ~(p -> q) -> r.
Hypothesis H1: ~r.
Hypothesis H2: q -> s.
Hypothesis H3: s -> p.
Lemma res: p <-> q.
Proof.
split.
apply neg_ant in H0.
apply NNPP in H0.
assumption.
assumption.
intro.
apply H2 in H.
apply H3 in H.
assumption.
Qed.

End razonamiento2.