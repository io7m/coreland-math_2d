with Math_2D.Types;

generic
  with package Types is new Math_2D.Types (<>);

package Math_2D.Vectors is

  function Inner_Product
    (Vector_A : in Types.Vector_t;
     Vector_B : in Types.Vector_t) return Types.Real_Type'Base
    renames Types."*";

  function Scalar_Product
    (Vector_A : in Types.Vector_t;
     Vector_B : in Types.Vector_t) return Types.Real_Type'Base
    renames Inner_Product;

  function Scale
    (Vector : in Types.Vector_t;
     Scalar : in Types.Real_Type'Base) return Types.Vector_t
    renames Types."*";

  function Magnitude
    (Vector : in Types.Vector_t) return Types.Real_Type'Base;
  pragma Inline (Magnitude);

  function Square_Magnitude
    (Vector : in Types.Vector_t) return Types.Real_Type'Base;
  pragma Inline (Square_Magnitude);

  function Normalize
    (Vector : in Types.Vector_t) return Types.Vector_t;
  procedure Normalize
    (Vector : in out Types.Vector_t);
  pragma Inline (Normalize);

end Math_2D.Vectors;
