with Geom_2D.Types;

generic
  with package Types is new Geom_2D.Types (<>);

package Geom_2D.Points is

  function Distance
    (Point_A : in Types.Point_t;
     Point_B : in Types.Point_t) return Types.Real_Type'Base;

end Geom_2D.Points;
