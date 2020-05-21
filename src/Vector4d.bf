using System;

namespace tinyAlgebra
{
	struct Vector4d
	{
		public double x;
		public double y;
		public double z;
		public double w;

		public this(double x, double y, double z, double w)
		{
			this.x = x;
			this.y = y;
			this.z = z;
			this.w = w;
		}

		public this(double value)
		{
			this.x = value;
			this.y = value;
			this.z = value;
			this.w = value;
		}

		public double this[int index]
		{
			get
			{
				switch (index)
				{
				case 1:  return y;
				case 2:  return z;
				case 3:  return w;
				default: return x;
				}
			}
			set mut
			{
				switch (index)
				{
				case 1:  y = value;
				case 2:  z = value;
				case 3:  w = value;
				default: x = value;
				}
			}
		}

		[Inline]
		public static Vector4d operator+(Vector4d lv, Vector4d rv)
		{
			return tA.Vec4Add(lv, rv);
		}

		[Inline]
		public static Vector4d operator+(Vector4d lv, double rv)
		{
			return tA.Vec4AddValue(lv, rv);
		}

		[Inline]
		public static Vector4d operator-(Vector4d lv, Vector4d rv)
		{
			return tA.Vec4Substract(lv, rv);
		}

		[Inline]
		public static Vector4d operator-(Vector4d lv, double rv)
		{
			return tA.Vec4SubstractValue(lv, rv);
		}

		[Inline]
		public static Vector4d operator*(Vector4d lv, Vector4d rv)
		{
			return tA.Vec4Multiply(lv, rv);
		}

		[Inline]
		public static Vector4d operator*(Vector4d lv, double rv)
		{
			return tA.Vec4Scale(lv, rv);
		}

		[Inline]
		public static Vector4d operator/(Vector4d lv, Vector4d rv)
		{
			return tA.Vec4Divide(lv, rv);
		}

		[Inline]
		public Vector4d AddValue(double value)
		{
			return tA.Vec4AddValue(this, value);
		}

		[Inline]
		public Vector4d SubstractValue(double value)
		{
			return tA.Vec4SubstractValue(this, value);
		}

		[Inline]
		public Vector4d Scale(double value)
		{
			return tA.Vec4Scale(this, value);
		}

		[Inline]
		public Vector4d Add(Vector4d v2)
		{
			return tA.Vec4Add(this, v2);
		}

		[Inline]
		public Vector4d Substract(Vector4d v2)
		{
			return tA.Vec4Substract(this, v2);
		}

		[Inline]
		public Vector4d Multiply(Vector4d v2)
		{
			return tA.Vec4Multiply(this, v2);
		}

		[Inline]
		public Vector4d Divide(Vector4d v2)
		{
			return tA.Vec4Divide(this, v2);
		}

		[Inline]
		public double DotProduct(Vector4d v2)
		{
			return tA.Vec4DotProduct(this, v2);
		}

		[Inline]
		public double DotProduct(double v2x, double v2y, double v2z, double v2w)
		{
			return tA.Vec4DotProduct(this.x, this.y, this.z, this.w, v2x, v2y, v2z, v2w);
		}

		[Inline]
		public double Length()
		{
			return tA.Vec4Length(this);
		}

		[Inline]
		public Vector4d Normalize()
		{
			return tA.Vec4Normalize(this);
		}

		[Inline]
		public Vector4d Lerp(Vector4d v2, double value)
		{
			return tA.Vec4Lerp(this, v2, value);
		}

		public static Vector4d One()
		{
			return Vector4d(1.0f);
		}

		public static Vector4d Zero()
		{
			return Vector4d(0.0f);
		}
	}
}
