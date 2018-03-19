Require Import Arith.
Require Import ZArith.
Require Import Bool.

(** * Scope *)
(** 

- core_scope : scope for Gallina basic notation
- type_scope : scope for Type

- [Open Scope <scope>.] : to open a scope
- [exp%k] : to specify a scope for an expression, [k] is a delimiting key (a symbol associated to a scope)
- [Locate <notation>.] : to know how notation(s) are interpreted 

*)

Open Scope Z_scope.

Locate "_ * _".

(** 

- [Print Scope <scope>.] : to know the associated delimiting key and all notation of a scope.

*)

Print Scope Z_scope.

(** * Check type *)

(**
- [Check t.] : To know the type of the term [t].
- [nat] is the delimiting key of [nat_scope], i.e. Peano numbers (TODO:to verify).
- [Z] is the delimiting key of [Z_scope], i.e. integers.
*)

Print Scope nat_scope.

Check 33%nat.
Check 0%nat.
Check 0.

Open Scope nat_scope.

Check 33.
Check 0.

Check 33%Z.
Check (-12)%Z.

Open Scope Z_scope.

Check (-12).
Check (33%nat).

(** There is no membership in Gallina, an integer of type [nat] is not include in [Z]. If we want to convert an integer of type [nat] to [Z], we need to define a function.
*)

(** * Simply typed lambda calculus *)

(**
Two types :
- _atomic_ type : e.g. [nat], [Z] and [bool]
- _arrow_ type : e.g. [A -> B]. TODO:See Ch05. ML.
*)

(**
- Declaration : [(x:A)]
- Definition : [x := t:A]
*)

(**
- _Environment_ : sequence of *global* declarations/definitions  
- _Context_ : sequence of *local* declarations/definitions

At the beginning of a session, there is an environment called [initial] and an empty context.

- [Reset Initial.] : come back to [initial] environment.
- [Reset <id>.] : remove all declaration/definition after [id].
*)

(**
- $E$ #E# and $\Gamma$ #Gamma# denote respectively the environment and the context.
- 
*)


