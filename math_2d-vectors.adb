package body Math_2D.Vectors is

  use type Types.Real_Type;

  function Magnitude
    (Vector : in Types.Vector_t) return Types.Real_Type'Base is
  begin
    return Types.Functions.Sqrt (Square_Magnitude (Vector));
  end Magnitude;

  function Square_Magnitude
    (Vector : in Types.Vector_t) return Types.Real_Type'Base is
  begin
    return Inner_Product
      (Vector_A => Vector,
       Vector_B => Vector);
  end Square_Magnitude;

  function Normalize
    (Vector : in Types.Vector_t) return Types.Vector_t
  is
    Product    : constant Types.Real_Type'Base := Inner_Product
      (Vector_A => Vector,
       Vector_B => Vector);
    Reciprocal : Types.Real_Type'Base;
  begin
    if Product /= 0.0 then
      Reciprocal := 1.0 / Types.Functions.Sqrt (Product);
      return Scale
        (Vector => Vector,
         Scalar => Reciprocal);
    else
      return Vector;
    end if;
  end Normalize;

  procedure Normalize
    (Vector : in out Types.Vector_t) is
  begin
    Vector := Normalize (Vector);
  end Normalize;

end Math_2D.Vectors;
