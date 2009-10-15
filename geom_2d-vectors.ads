with Geom_2D.Types;

generic
  with package Types is new Geom_2D.Types (<>);

package Geom_2D.Vectors is

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

  function Normalize
    (Vector : in Types.Vector_t) return Types.Vector_t;
  procedure Normalize
    (Vector : in out Types.Vector_t);
  pragma Inline (Normalize);

end Geom_2D.Vectors;
