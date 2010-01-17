with Ada.Numerics;
with Math_2D.Types;

generic
  with package Types is new Math_2D.Types (<>);

package Math_2D.Trigonometry is

  use type Types.Real_Type'Base;

  type Degrees_t is new Types.Real_Type'Base range 0.0 .. 360.0;
  type Radians_t is new Types.Real_Type'Base range 0.0 .. 360.0 * (Ada.Numerics.Pi / 180.0);

  function To_Radians (Degrees : in Degrees_t) return Radians_t;
  pragma Inline (To_Radians);

  function To_Degrees (Radians : in Radians_t) return Degrees_t;
  pragma Inline (To_Degrees);

end Math_2D.Trigonometry;
