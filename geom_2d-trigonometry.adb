with Ada.Numerics;

package body Geom_2D.Trigonometry is

  function To_Radians (Degrees : in Degrees_t) return Radians_t is
  begin
    return Radians_t (Degrees * (Ada.Numerics.Pi / 180.0));
  end To_Radians;

  function To_Degrees (Radians : in Radians_t) return Degrees_t is
  begin
    return Degrees_t (Radians * (180.0 / Ada.Numerics.Pi));
  end To_Degrees;

end Geom_2D.Trigonometry;
