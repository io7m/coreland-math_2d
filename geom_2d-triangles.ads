with Geom_2D.Types;
with Geom_2D.Points;

generic
  with package Types  is new Geom_2D.Types (<>);
  with package Points is new Geom_2D.Points (Types);

package Geom_2D.Triangles is

  function Area
    (Triangle : in Types.Triangle_t) return Types.Real_Type'Base;

  function Orthocenter
    (Triangle : in Types.Triangle_t) return Types.Point_t;

  function Perimeter
    (Triangle : in Types.Triangle_t) return Types.Real_Type'Base;

  function Point_Is_Inside
    (Triangle : in Types.Triangle_t;
     Point    : in Types.Point_t) return Boolean;

end Geom_2D.Triangles;
