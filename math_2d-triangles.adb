package body Math_2D.Triangles is

  use type Types.Real_Type;
  use type Types.Point_t;

  function Area
    (Triangle : in Types.Triangle_t) return Types.Real_Type'Base
  is
    Point_A : Types.Point_t renames Triangle (1);
    Point_B : Types.Point_t renames Triangle (2);
    Point_C : Types.Point_t renames Triangle (3);

    A : constant Types.Real_Type'Base := Point_A (1) - Point_C (1);
    B : constant Types.Real_Type'Base := Point_A (2) - Point_C (2);
    C : constant Types.Real_Type'Base := Point_B (1) - Point_C (1);
    D : constant Types.Real_Type'Base := Point_B (2) - Point_C (2);
  begin
    return abs ((A * D) - (B * C)) / 2.0;
  end Area;

  function Orthocenter
    (Triangle : in Types.Triangle_t) return Types.Point_t is
  begin
    return (Triangle (1)
          + Triangle (2)
          + Triangle (3)) / 3.0;
  end Orthocenter;

  function Perimeter
    (Triangle : in Types.Triangle_t) return Types.Real_Type'Base
  is
    Point_A     : Types.Point_t renames Triangle (1);
    Point_B     : Types.Point_t renames Triangle (2);
    Point_C     : Types.Point_t renames Triangle (3);

    Distance_AB : constant Types.Real_Type'Base := Points.Distance (Point_A, Point_B);
    Distance_BC : constant Types.Real_Type'Base := Points.Distance (Point_B, Point_C);
    Distance_CA : constant Types.Real_Type'Base := Points.Distance (Point_C, Point_A);
  begin
    return Distance_AB + Distance_BC + Distance_CA;
  end Perimeter;

  function Point_Is_Inside
    (Triangle : in Types.Triangle_t;
     Point    : in Types.Point_t) return Boolean
  is
    Point_A    : Types.Point_t renames Triangle (1);
    Point_B    : Types.Point_t renames Triangle (2);
    Point_C    : Types.Point_t renames Triangle (3);

    Sub_Tri_A  : constant Types.Triangle_t     := (Point, Point_A, Point_B);
    Sub_Tri_B  : constant Types.Triangle_t     := (Point, Point_B, Point_C);
    Sub_Tri_C  : constant Types.Triangle_t     := (Point, Point_A, Point_C);

    Base_Area  : constant Types.Real_Type'Base := Area (Triangle);
    Area_A     : constant Types.Real_Type'Base := Area (Sub_Tri_A);
    Area_B     : constant Types.Real_Type'Base := Area (Sub_Tri_B);
    Area_C     : constant Types.Real_Type'Base := Area (Sub_Tri_C);
    Total_Area : constant Types.Real_Type'Base := Area_A + Area_B + Area_C;
  begin
    return Total_Area <= Base_Area;
  end Point_Is_Inside;

end Math_2D.Triangles;
