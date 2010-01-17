package body Math_2D.Points is

  use type Types.Real_Type;
  use type Types.Point_t;

  function Distance
    (Point_A : in Types.Point_t;
     Point_B : in Types.Point_t) return Types.Real_Type'Base is
  begin
    return Vectors.Magnitude (Types.Vector_t (Point_A - Point_B));
  end Distance;

end Math_2D.Points;
