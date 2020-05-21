using System;

namespace tinyAlgebra
{
	struct Vector3d
	{
		public double x;
		public double y;
		public double z;

		public this(double x, double y, double z)
		{
			this.x = x;
			this.y = y;
			this.z = z;
		}
		public this(double value)
		{
			this.x = value;
			this.y = value;
			this.z = value;
		}

		public double this[int index]
		{
			get
			{
				switch (index)
				{
				case 1:  return y;
				case 2:  return z;
				default: return x;
				}
			}
			set mut
			{
				switch (index)
				{
				case 1:  y = value;
				case 2:  z = value;
				default: x = value;
				}
			}
		}

		[Inline]
		public static Vector3d operator+(Vector3d rv, Vector3d lv)
		{
			return tA.Vec3Add(rv, lv);
		}

		[Inline]
		public static Vector3d operator+(Vector3d rv, double lv)
		{
			return tA.Vec3AddValue(rv, lv);
		}

		[Inline]
		public static Vector3d operator-(Vector3d rv, Vector3d lv)
		{
			return tA.Vec3Substract(rv, lv);
		}

		[Inline]
		public static Vector3d operator-(Vector3d rv, double lv)
		{
			return tA.Vec3SubstractValue(rv, lv);
		}

		[Inline]
		public static Vector3d operator*(Vector3d rv, Vector3d lv)
		{
			return tA.Vec3Multiply(rv, lv);
		}

		[Inline]
		public static Vector3d operator*(Vector3d rv, double lv)
		{
			return tA.Vec3Scale(rv, lv);
		}

		[Inline]
		public static Vector3d operator/(Vector3d rv, Vector3d lv)
		{
			return tA.Vec3Divide(rv, lv);
		}

		[Inline]
		public Vector3d AddValue(double value)
		{
			return tA.Vec3AddValue(this, value);
		}

		[Inline]
		public Vector3d SubstractValue(double value)
		{
			return tA.Vec3SubstractValue(this, value);
		}

		[Inline]
		public Vector3d Scale(double value)
		{
			return tA.Vec3Scale(this, value);
		}

		[Inline]
		public Vector3d Negate()
		{
			return tA.Vec3Negate(this);
		}

		[Inline]
		public Vector3d Add(Vector3d v2)
		{
			return tA.Vec3Add(this, v2);
		}

		[Inline]
		public Vector3d Substract(Vector3d v2)
		{
			return tA.Vec3Substract(this, v2);
		}

		[Inline]
		public Vector3d Multiply(Vector3d v2)
		{
			return tA.Vec3Multiply(this, v2);
		}

		[Inline]
		public Vector3d Divide(Vector3d v2)
		{
			return tA.Vec3Divide(this, v2);
		}

		[Inline]
		public double DotProduct(Vector3d v2)
		{
			return tA.Vec3DotProduct(this, v2);
		}

		[Inline]
		public double DotProduct(double v2x, double v2y, double v2z)
		{
			return tA.Vec3DotProduct(this.x, this.y, this.z, v2x, v2y, v2z);
		}

		[Inline]
		public double Length(Vector3d v2)
		{
			return tA.Vec3Length(this);
		}

		[Inline]
		public double LengthSquare(Vector3d v2)
		{
			return tA.Vec3LengthSquare(this);
		}

		[Inline]
		public Vector3d CrossProduct(Vector3d v2)
		{
			return tA.Vec3CrossProduct(this, v2);
		}

		[Inline]
		public double Distance(Vector3d v2)
		{
			return tA.Vec3Distance(this, v2);
		}

		[Inline]
		public Vector3d Normalize(Vector3d v2)
		{
			return tA.Vec3Normalize(this);
		}

		[Inline]
		public Vector3d Transform(Mat4 m)
		{
			return tA.Vec3Transform(this, m);
		}

		[Inline]
		public Vector3d Lerp(Vector3d v2, double value)
		{
			return tA.Vec3Lerp(this, v2, value);
		}

		public static Vector3d Zero()
		{
			return Vector3d(0);
		}

		public static Vector3d One()
		{
			return Vector3d(1);
		}
	}
}
