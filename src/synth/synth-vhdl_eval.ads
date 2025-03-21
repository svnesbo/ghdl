--  Operations synthesis.
--  Copyright (C) 2019 Tristan Gingold
--
--  This file is part of GHDL.
--
--  This program is free software: you can redistribute it and/or modify
--  it under the terms of the GNU General Public License as published by
--  the Free Software Foundation, either version 2 of the License, or
--  (at your option) any later version.
--
--  This program is distributed in the hope that it will be useful,
--  but WITHOUT ANY WARRANTY; without even the implied warranty of
--  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--  GNU General Public License for more details.
--
--  You should have received a copy of the GNU General Public License
--  along with this program.  If not, see <gnu.org/licenses>.

with Elab.Vhdl_Objtypes; use Elab.Vhdl_Objtypes;
with Elab.Vhdl_Values; use Elab.Vhdl_Values;
with Elab.Vhdl_Context; use Elab.Vhdl_Context;

with Vhdl.Nodes; use Vhdl.Nodes;

package Synth.Vhdl_Eval is
   --  Note: INST is only used to report errors.

   function Eval_Static_Dyadic_Predefined (Inst : Synth_Instance_Acc;
                                           Imp : Node;
                                           Res_Typ : Type_Acc;
                                           Left : Memtyp;
                                           Right : Memtyp;
                                           Expr : Node) return Memtyp;
   function Eval_Static_Monadic_Predefined (Inst : Synth_Instance_Acc;
                                            Imp : Node;
                                            Operand : Memtyp;
                                            Expr : Node) return Memtyp;

   function Eval_Static_Predefined_Function_Call (Inst : Synth_Instance_Acc;
                                                  Param1 : Valtyp;
                                                  Param2 : Valtyp;
                                                  Res_Typ : Type_Acc;
                                                  Expr : Node) return Memtyp;

   --  STYP is the string type.
   function String_To_Memtyp (Str : String; Styp : Type_Acc) return Memtyp;
end Synth.Vhdl_Eval;
