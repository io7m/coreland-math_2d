with Geom_2D.Types;

generic
  with package Types is new Geom_2D.Types (<>);

package Geom_2D.Triangles is

  function Orthocenter
    (T : in Types.Triangle_t) return Types.Point_t;

  function Area
    (T : in Types.Triangle_t) return Types.Real_Type'Base;

end Geom_2D.Triangles;
