with Math_2D.Types;
with Math_2D.Points;
with Math_2D.Vectors;

generic
  with package Types   is new Math_2D.Types (<>);
  with package Vectors is new Math_2D.Vectors (Types);
  with package Points  is new Math_2D.Points
    (Types   => Types,
     Vectors => Vectors);

package Math_2D.Triangles is

  function Area
    (Triangle : in Types.Triangle_t) return Types.Real_Type'Base;

  function Orthocenter
    (Triangle : in Types.Triangle_t) return Types.Point_t;

  function Perimeter
    (Triangle : in Types.Triangle_t) return Types.Real_Type'Base;

  function Point_Is_Inside
    (Triangle : in Types.Triangle_t;
     Point    : in Types.Point_t) return Boolean;

end Math_2D.Triangles;
