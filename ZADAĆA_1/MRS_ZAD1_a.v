Require Import Bool.


Check true && false.
Check true || false.

Notation " ! b " := (negb b) (at level 0).

Goal forall x y ,
 !(x && y ) || (!x && y ) || (!x && !y ) = (!x || !y) .
Proof.
  destruct x, y ; simpl ; reflexivity.
Qed.