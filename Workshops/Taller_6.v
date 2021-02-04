Section LPPO_1.

Variable D : Set.
Variable c d e : D.
Variable P Q T: D -> Prop.

(* 1 *)
Theorem pred_01 : ~(forall x, P x)  -> ~ forall x, P x /\ Q x.
Proof.
Admitted.

(* 2 *)
Theorem pred_02 : ~(forall x : D, P x \/ (Q x -> T x)) -> ~forall x : D, T x.
Proof.
Admitted.

(* 3 *)
Theorem pred_03 : ~(forall x, P x /\ Q x) /\ (forall x, P x) -> ~forall x, Q x.
Proof.
Admitted.

(* 4 *)
Theorem pred_04 : (exists x, P x \/ Q x) -> (forall x, ~Q x) -> exists x, P x.
Proof.
Admitted.

(* 5 *)
Theorem pred_05 : (forall y, Q y -> ~exists x, P x) /\ (forall x, P x) -> forall y, ~Q y.
Proof.
Admitted.

(* 6 *)
Theorem pred_06 : (forall x, ~P x) -> ~exists x, P x.
Proof.
Admitted.

End LPPO_1.

Section LPPO_2.

Variable A : Set.
Variables P Q : A -> Prop.
Variables R : A -> A -> Prop.
 
(* 7 *)
Lemma forall_imp_dist : (forall x : A, P x -> Q x) -> (forall x : A, P x) -> forall x : A, Q x.
Proof.
Admitted.

(* 8 *)
Lemma forall_perm : (forall x y : A, R x y) -> forall y x, R x y.
Proof.
Admitted.

(* 9 *)
Lemma forall_delta : (forall x y : A, R x y) -> forall x, R x x.
Proof.
Admitted.

(* 10 *)
Lemma exists_or_dist : (exists x : A, P x \/ Q x) <-> (exists x, P x) \/ (exists x, Q x).
Proof.
Admitted.

(* 11 *)
Lemma exists_imp_dist : (exists x : A, P x -> Q x) -> (forall x : A, P x) -> exists x : A, Q x.
Proof.
Admitted.

(* 12 *)
Lemma not_empty_forall_exists : forall a : A, (forall x : A, P x) -> exists x : A, P x.
Proof.
Admitted.

(* 13 *)
Lemma not_ex_forall_not : ~(exists x : A, P x) <-> forall x : A, ~P x.
Proof.
Admitted.

End LPPO_2.

Section Examples.

Inductive bool: Set :=
  | true
  | false.
  
Lemma xyz : forall (f: bool->bool) x y z, x  = y -> y = z -> f x = f z.
Proof.
  intros.
  cut (x = z).
  intro.
  subst.
  reflexivity.
  subst.
  reflexivity.
Qed.

Variable A : Set.
Variable P Q: A -> Prop.

Hypothesis Usefull : forall x : A, P x \/ ~ Q x.

Theorem Ex_1 : forall x : A, (~ P x -> ~ Q x) -> (Q x -> P x).
Proof.
  intros.
  elim (Usefull x).
  intro.
  assumption.
  intro.
  contradiction.
Qed.

Theorem Ex_2 : forall x : A, False -> P x.
Proof.
  intros.
  absurd (P x).
  intro.
  assumption.
  absurd (~P x).
  intro.
  assumption.
  intro.
  assumption.
Qed.

End Examples.

(*
 1. CORRECAMINOS:

  1. Todo coyote persigue algun correcaminos.
  2. Todo correcaminos que dice "beep-beep" es astuto.
  3. Ningún coyote es capaz de atrapar un correcaminos astuto.
  4. Cualquier coyote que persigue algún correcaminos, pero no logra 
     atraparlo, esta frustrado.

  Conclusión: Si todos los correcaminos dicen "beep-beep", entonces 
              todos los coyotes están frustrados.
*)
Section Correcaminos.
End Correcaminos.

(*
 2. NAVIDAD:

  1. Todo muchacho ama a Santa.
  2. Todo aquel que ama a Santa ama a cualquier reno.
  3. Rudolph es un reno, y tiene una nariz roja.
  4. Todo lo que tiene una nariz roja es raro o es un payaso.
  5. Ningún reno es un payaso.
  6. Scrooge no ama nada que sea raro.
  
  Conclusión: Scrooge no es un muchacho.
*)
Section Navidad.
End Navidad.

(*
 3. INMIGRACION:

  1. Quien intente entrar en un país y no tenga pasaporte, encontrará
     algún aduanero que le impida el paso.
  2. A algunas personas motorizadas que intentan entrar en un país le 
     impiden el paso únicamente personas motorizadas.
  3. Ninguna persona motorizada tiene
     pasaporte.

  Conclusión: Ciertos aduaneros están motorizados.
*)

Section Inmigracion.
End Inmigracion.

(*
 4. BRUJAS:

  1. Todo niño ve alguna bruja.
  2. Ninguna bruja tiene tanto un gato negro como un sombrero puntiagudo.
  3. Toda bruja es buena o mala.
  4. Todo niño que ve una bruja buena recibe dulces.
  5. Las brujas malévolas siempre tienen un gato negro.

  Conclusión: Si toda bruja que es vista por cualquier niño posee un
              sombrero puntiagudo, entonces todo niño recibe dulces.
*)

Section Brujas.
End Brujas.

(*
 5. POLITICA:

  1. En el siglo XIX un demócrata podía ser tanto liberal como
     socialista.
  2. Los liberales aceptaban la revolución industrial y defendían
     la institución de la propiedad privada de los medios de 
     producción, el establecimiento de una economía de mercado
     autorregulada y la conversión del trabajo en mercancía.
  3. Los socialistas aceptaban también la revolución industrial,
     pero rechazaban esos tres puntos de la ideología liberal.
  4. Los conservadores, por su parte, rechazaban la revolución
     industrial.

  Conclusión: De ello se desprende que ni los liberales ni los
              socialistas eran conservadores, que ningún liberal
              era socialista y que ningún conservador era demócrata.

 [
  Consideramos que los tres puntos de la ideología liberal se refieren
  a la institución de la propiedad privada de los medios de producción,
  el establecimiento de una economía de mercado autorregulada y la
  conversión del trabajo en mercancía.
 ]
*)
Section Politica.
End Politica.

(*
  Un predicado universal es no vacío.
*)
Section Simple.
End Simple.

(*
  En un bar hay alguien, tal que si él está tomando,
  todos en el bar están tomando.
*)
Section Drinker.
End Drinker.








