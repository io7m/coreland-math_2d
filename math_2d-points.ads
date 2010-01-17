with Math_2D.Types;
with Math_2D.Vectors;

generic
  with package Types   is new Math_2D.Types (<>);
  with package Vectors is new Math_2D.Vectors (Types);

package Math_2D.Points is

  function Distance
    (Point_A : in Types.Point_t;
     Point_B : in Types.Point_t) return Types.Real_Type'Base;

end Math_2D.Points;
