Require Import Bool.


Check true && false.
Check true || false.

Notation " ! b " := (negb b) (at level 0).

Goal forall x y z,
 !(!x && y && !z ) && !(x && y && z ) && (x && !y &&!z ) = (x && !y && !z) .
Proof.
  destruct x, y, z ; simpl ; reflexivity.
Qed.