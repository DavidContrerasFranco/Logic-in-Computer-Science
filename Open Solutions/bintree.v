(* Árbol Binario *)

(* Definición *)
Inductive BinaryTree : Set :=
  | E : BinaryTree
  | Node : nat -> BinaryTree -> BinaryTree -> BinaryTree.

(* Empty ? *)
Fixpoint empty_tree (a : BinaryTree) : bool :=
  match a with
    | Node _ E E => true
    | _ => false
  end.

(* Suma Total *)
Fixpoint sum_tree (a : BinaryTree) : nat :=
  match a with
    | E => 0
    | Node n node1 node2 => sum_tree node1 + sum_tree node2 + n
  end.

(* Número de Nodos *)
Fixpoint qt_nodes (a : BinaryTree) : nat :=
  match a with
    | E => 0
    | Node _ node1 node2 => qt_nodes node1 + qt_nodes node2 + 1
  end.

(* Reflejar un Árbol Horizontalmente *)
Fixpoint reflect_H (a : BinaryTree) : BinaryTree :=
  match a with
    | E => E
    | Node k node1 node2 => Node k (reflect_H node2) (reflect_H node1)
  end.


Compute Node 1 (Node 2 E E) (Node 3 E E).
Compute empty_tree (Node 1 E (Node 2 E E)).
Compute empty_tree (Node 1 E E).
Compute sum_tree (Node 1 (Node 2 E E) (Node 3 E E)).
Compute qt_nodes (Node 1 (Node 2 E E) (Node 3 E (Node 4 E E))).
Compute reflect_H (Node 1 (Node 2 E E) (Node 3 E (Node 4 E E))).
