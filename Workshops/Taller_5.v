Section LPPO_1.

Variable A : Set.
Variables P Q : A -> Prop.

Lemma lppo_exrc_1 : (exists x : A, P x \/ Q x) <-> (exists x, P x) \/ (exists x, Q x).
Proof.
Admitted.

Lemma lppo_exrc_2 : ~(exists x : A, P x) <-> forall x : A, ~P x.
Proof.
Admitted.
End LPPO_1.

Section Induct.
(* induction Var, rewrite (<-) X, simpl, pose proof ¨Theorem¨ as X *)

(* Construir definición inductiva de suma *)
Fixpoint add (a b: nat) : nat :=
  match a with
    | 0 => b
    | S n => S (add n b)
  end.

(* Propiedad Igualdad de Sucesores Implica Igualdad *)
Theorem successors_equal_implies_equal : forall(a b c : nat), a = b -> S a = S b.
Proof.
Admitted.

(* Propiedad Identidad *)
Theorem identity_add : forall(a : nat), add a 0 = a.
Proof.
Admitted.

(* Propiedad Equal Second *)
Theorem second_equals_add : forall(a b c: nat), b = c -> add a b = add a c.
Proof.
Admitted.

(* Propiedad Equal Second *)
Theorem first_equals_add : forall(a b c: nat), b = c -> add b a = add c a.
Proof.
Admitted.

(* Propiedad Asociativa *)
Theorem associative_add : forall(a b c : nat), (add a (add b c)) = (add (add a b) c).
Proof.
Admitted.

(* Propiedad Sucesor *)
Theorem plus_one_add : forall(a b: nat), add a (S b) = S(add a b).
Proof.
Admitted.

(* Propiedad Conmutativa *)
Theorem commutative_add : forall(a b : nat), add a b = add b a.
Proof.
Admitted.

(* Construir definición inductiva de la multiplicación *)
Fixpoint mul (a b: nat) : nat :=
  match a with
    | 0 => 0
    | S n => add b (mul n b)
  end.

(* Propiedad Identidad *)
Theorem identity_mul : forall(a : nat), mul a 1 = a.
Proof.
Admitted.

(* Propiedad Producto-Nulo *)
Theorem null_mul : forall(a : nat), mul a 0 = 0.
Proof.
Admitted.

(* Propiedad Sucesor *)
Theorem plus_one_mul : forall(a b : nat), mul a (S b) = add a (mul a b).
Proof.
Admitted.

(* Propiedad Conmutativa *)
Theorem commutative_mul : forall(a b : nat), mul a b = mul b a.
Proof.
Admitted.

(* Propiedad Distributiva *)
Theorem distributive_der_mul : forall(a b c : nat), mul (add a b) c = add (mul a c) (mul b c).
Proof.
Admitted.

(* Propiedad Distributiva *)
Theorem distributive_izq_mul : forall(a b c : nat), mul a (add b c) = add (mul a b) (mul a c).
Proof.
Admitted.

(* Propiedad Asociativa *)
Theorem associative_mul : forall(a b c : nat), (mul a (mul b c)) = (mul (mul a b) c).
Proof.
Admitted.

End Induct.