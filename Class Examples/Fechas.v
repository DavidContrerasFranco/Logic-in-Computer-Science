(* Fechas del Año *)

(* Definición Meses *)
Inductive month : Type :=
  | january   : month
  | february  : month
  | march     : month
  | april     : month
  | may       : month
  | june      : month
  | july      : month
  | august    : month
  | september : month
  | october   : month
  | november  : month
  | december  : month.

(* Definición días *)
Inductive day : Type :=
  | monday      : day
  | tuesday     : day
  | wednesday   : day
  | thursday    : day
  | friday      : day
  | saturday    : day
  | sunday      : day.

(* Definición Cuatro Estaciones *)
Inductive season : Type :=
  | spring  : season
  | summer  : season
  | autumn  : season
  | winter  : season.

(* Siguiente Día *)
Definition next_day (d : day) : day :=
  match d with
    | monday    => tuesday
    | tuesday   => wednesday
    | wednesday => thursday
    | thursday  => friday
    | friday    => saturday
    | saturday  => sunday
    | sunday    => monday
  end.

(* Día Anterior *)
Definition prev_day (d : day) : day :=
  match d with
    | monday    => sunday
    | tuesday   => monday
    | wednesday => tuesday
    | thursday  => wednesday
    | friday    => thursday
    | saturday  => friday
    | sunday    => saturday
  end.

(* Siguiente Mes *)
Definition next_month (m : month) : month :=
  match m with
    | january   => february
    | february  => march
    | march     => april
    | april     => may
    | may       => june
    | june      => july
    | july      => august
    | august    => september
    | september => october
    | october   => november
    | november  => december
    | december  => january
  end.

(* Mes Anterior *)
Definition prev_month (m : month) : month :=
  match m with
    | january   => december
    | february  => january
    | march     => february
    | april     => march
    | may       => april
    | june      => may
    | july      => june
    | august    => july
    | september => august
    | october   => september
    | november  => october
    | december  => november
  end.

(* Mes Asociado con una Estación *)
Definition wh_season (m : month) : season :=
  match m with
    | january   => winter
    | february  => winter
    | march     => spring
    | april     => spring
    | may       => spring
    | june      => summer
    | july      => summer
    | august    => summer
    | september => autumn
    | october   => autumn
    | november  => autumn
    | december  => winter
  end.

(* Cantidad de días *)
Definition amt_days (m : month) : nat :=
  match m with
    | january   => 31
    | february  => 28
    | march     => 31
    | april     => 30
    | may       => 31
    | june      => 30
    | july      => 31
    | august    => 31
    | september => 30
    | october   => 31
    | november  => 30
    | december  => 31
  end.

(* Día del año *)
Fixpoint which_day (n : nat) : day :=
  match n with
    | 0 => tuesday
    | S n => next_day (which_day n)
  end.

(* Mes del año *)
Fixpoint which_month (n : nat) : month :=
  match n with
    | 0 => december
    | S n => next_month (which_month n)
  end.

(* Cantidad de días antes de més *)
Fixpoint days_before (m : month) : nat :=
  match m with
    | january => 0
    | _ => (amt_days (prev_month m)) + (days_before (prev_month m))
  end.

(* Cómo empieza el mes *)
Fixpoint month_start (m : month) : day :=
  match m with
    | 0 => tuesday
    | S n => next_month (which_month n)
  end.

(* Día del mes *)
Fixpoint which_day_in_month (n : nat) (m : month) : day :=
  match n with
    | 0 => december
    | n => next_month (which_month)
  end.