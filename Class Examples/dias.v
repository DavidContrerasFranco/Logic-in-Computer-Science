(* Días de la Semana *)

(* Definición *)
Inductive day : Type :=
  | lunes     : day
  | martes    : day
  | miercoles : day
  | jueves    : day
  | viernes   : day
  | sabado    : day
  | domingo   : day.

(* Siguiente Día *)

Definition next_day (d:day) : day :=
  match d with
  | lunes => martes
  | martes => miercoles
  | miercoles => jueves
  | jueves => viernes
  | viernes => sabado
  | sabado => domingo
  | domingo => lunes
  end.

Compute next_day viernes.

