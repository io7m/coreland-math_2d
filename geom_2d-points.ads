with Geom_2D.Types;
with Geom_2D.Vectors;

generic
  with package Types   is new Geom_2D.Types (<>);
  with package Vectors is new Geom_2D.Vectors (Types);

package Geom_2D.Points is

  function Distance
    (Point_A : in Types.Point_t;
     Point_B : in Types.Point_t) return Types.Real_Type'Base;

end Geom_2D.Points;
