with Ada.Numerics.Generic_Real_Arrays;
with Ada.Numerics.Generic_Elementary_Functions;

generic
  type Real_Type is digits <>;

package Geom_2D.Types is
  package Functions is new Ada.Numerics.Generic_Elementary_Functions (Real_Type);
  package Arrays    is new Ada.Numerics.Generic_Real_Arrays (Real_Type);

  type Point_t  is new Arrays.Real_Vector (1 .. 2);
  type Vector_t is new Arrays.Real_Vector (1 .. 2);

  type Triangle_Point_Index_t is range 1 .. 3;
  type Triangle_t             is array (Triangle_Point_Index_t) of Point_t;

  type Line_Segment_Point_Index_t is range 1 .. 2;
  type Line_Segment_t             is array (Line_Segment_Point_Index_t) of Point_t;

end Geom_2D.Types;
