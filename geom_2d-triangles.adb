package body Geom_2D.Triangles is

  use type Types.Real_Type;
  use type Types.Point_t;

  function Orthocenter
    (T : in Types.Triangle_t) return Types.Point_t is
  begin
    return (T (1) + T (2) + T (3)) / 3.0;
  end Orthocenter;

  function Area
    (T : in Types.Triangle_t) return Types.Real_Type'Base
  is
    Point_A : Types.Point_t renames T (1);
    Point_B : Types.Point_t renames T (2);
    Point_C : Types.Point_t renames T (3);

    A : constant Types.Real_Type'Base := Point_A (1) - Point_C (1);
    B : constant Types.Real_Type'Base := Point_A (2) - Point_C (2);
    C : constant Types.Real_Type'Base := Point_B (1) - Point_C (1);
    D : constant Types.Real_Type'Base := Point_B (2) - Point_C (2);
  begin
    return abs ((A * D) - (B * C)) / 2.0;
  end Area;

end Geom_2D.Triangles;
