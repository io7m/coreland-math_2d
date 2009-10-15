package body Geom_2D.Points is

  use type Types.Real_Type;
  use type Types.Point_t;

  function Distance
    (Point_A : in Types.Point_t;
     Point_B : in Types.Point_t) return Types.Real_Type'Base
  is
    Point_Sub : constant Types.Point_t := Point_A - Point_B;
  begin
    return Types.Functions.Sqrt (Point_Sub * Point_Sub);
  end Distance;

end Geom_2D.Points;
