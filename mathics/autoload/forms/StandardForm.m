(* This implements StandardForm boxing rules in Mathics *)


Begin["System`"]

(******************************************************************************************)
(* Common Boxing routines that are used by many forms. FIXME: place this in another file. *)
(******************************************************************************************)

(* Change RadBox to RadicalBox. We use RadBox to make it clear that
   the below code was a read-in from a file and not some pre-existing
   code. *)
Attributes[CommonRadicalBox] = HoldAll;
Attributes[RadBox] = HoldAll;
CommonRadicalBox[expr_, form_] = RadBox[MakeBoxes[expr, form], 3];

(******************************************************************************************)
(* StandardForm Boxing Rules                                                               *)
(******************************************************************************************)

MakeBoxes[CubeRoot[expr_], StandardForm] := CommonRadicalBox[expr, StandardForm];
(*All the other StandardForm boxing routines... *)

End[]
