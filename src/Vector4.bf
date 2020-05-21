using System;

namespace tinyAlgebra
{
	struct Vector4
	{
		public float x;
		public float y;
		public float z;
		public float w;

		public this(float x, float y, float z, float w)
		{
			this.x = x;
			this.y = y;
			this.z = z;
			this.w = w;
		}

		public this(float value)
		{
			this.x = value;
			this.y = value;
			this.z = value;
			this.w = value;
		}

		public float this[int index]
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
		public static Vector4 operator+(Vector4 lv, Vector4 rv)
		{
			return tA.Vec4Add(lv, rv);
		}

		[Inline]
		public static Vector4 operator+(Vector4 lv, float rv)
		{
			return tA.Vec4AddValue(lv, rv);
		}

		[Inline]
		public static Vector4 operator-(Vector4 lv, Vector4 rv)
		{
			return tA.Vec4Substract(lv, rv);
		}

		[Inline]
		public static Vector4 operator-(Vector4 lv, float rv)
		{
			return tA.Vec4SubstractValue(lv, rv);
		}

		[Inline]
		public static Vector4 operator*(Vector4 lv, Vector4 rv)
		{
			return tA.Vec4Multiply(lv, rv);
		}

		[Inline]
		public static Vector4 operator*(Vector4 lv, float rv)
		{
			return tA.Vec4Scale(lv, rv);
		}

		[Inline]
		public static Vector4 operator/(Vector4 lv, Vector4 rv)
		{
			return tA.Vec4Divide(lv, rv);
		}

		[Inline]
		public Vector4 AddValue(float value)
		{
			return tA.Vec4AddValue(this, value);
		}

		[Inline]
		public Vector4 SubstractValue(float value)
		{
			return tA.Vec4SubstractValue(this, value);
		}

		[Inline]
		public Vector4 Scale(float value)
		{
			return tA.Vec4Scale(this, value);
		}

		[Inline]
		public Vector4 Add(Vector4 v2)
		{
			return tA.Vec4Add(this, v2);
		}

		[Inline]
		public Vector4 Substract(Vector4 v2)
		{
			return tA.Vec4Substract(this, v2);
		}

		[Inline]
		public Vector4 Multiply(Vector4 v2)
		{
			return tA.Vec4Multiply(this, v2);
		}

		[Inline]
		public Vector4 Divide(Vector4 v2)
		{
			return tA.Vec4Divide(this, v2);
		}

		[Inline]
		public float DotProduct(Vector4 v2)
		{
			return tA.Vec4DotProduct(this, v2);
		}

		[Inline]
		public float DotProduct(float v2x, float v2y, float v2z, float v2w)
		{
			return tA.Vec4DotProduct(this.x, this.y, this.z, this.w, v2x, v2y, v2z, v2w);
		}

		[Inline]
		public float Length()
		{
			return tA.Vec4Length(this);
		}

		[Inline]
		public Vector4 Normalize()
		{
			return tA.Vec4Normalize(this);
		}

		[Inline]
		public Vector4 Lerp(Vector4 v2, float value)
		{
			return tA.Vec4Lerp(this, v2, value);
		}

		public static Vector4 One()
		{
			return Vector4(1.0f);
		}

		public static Vector4 Zero()
		{
			return Vector4(0.0f);
		}
	}
}
