with Geom_2D.Types;

generic
  with package Types is new Geom_2D.Types (<>);

package Geom_2D.Triangles is

  function Orthocenter
    (Triangle : in Types.Triangle_t) return Types.Point_t;

  function Area
    (Triangle : in Types.Triangle_t) return Types.Real_Type'Base;

  function Point_Is_Inside
    (Triangle : in Types.Triangle_t;
     Point    : in Types.Point_t) return Boolean;

end Geom_2D.Triangles;
