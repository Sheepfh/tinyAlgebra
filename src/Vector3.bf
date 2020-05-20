using System;

namespace tinyAlgebra
{
struct Vector3
	{
		public float x;
		public float y;
		public float z;

		public this(float x, float y, float z)
		{
			this.x = x;
			this.y = y;
			this.z = z;
		}
		public this(float value)
		{
			this.x = value;
			this.y = value;
			this.z = value;
		}

		[Inline]
		public static Vector3 operator+(Vector3 rv, Vector3 lv)
		{
			return tA.Vec3Add(rv, lv);
		}

		[Inline]
		public static Vector3 operator+(Vector3 rv, float lv)
		{
			return tA.Vec3AddValue(rv, lv);
		}

		[Inline]
		public static Vector3 operator-(Vector3 rv, Vector3 lv)
		{
			return tA.Vec3Substract(rv, lv);
		}

		[Inline]
		public static Vector3 operator-(Vector3 rv, float lv)
		{
			return tA.Vec3SubstractValue(rv, lv);
		}

		[Inline]
		public static Vector3 operator*(Vector3 rv, Vector3 lv)
		{
			return tA.Vec3Multiply(rv, lv);
		}

		[Inline]
		public static Vector3 operator*(Vector3 rv, float lv)
		{
			return tA.Vec3Scale(rv, lv);
		}

		[Inline]
		public static Vector3 operator/(Vector3 rv, Vector3 lv)
		{
			return tA.Vec3Divide(rv, lv);
		}

		[Inline]
		public Vector3 AddValue(float value)
		{
			return tA.Vec3AddValue(this, value);
		}

		[Inline]
		public Vector3 SubstractValue(float value)
		{
			return tA.Vec3SubstractValue(this, value);
		}

		[Inline]
		public Vector3 Scale(float value)
		{
			return tA.Vec3Scale(this, value);
		}

		[Inline]
		public Vector3 Negate()
		{
			return tA.Vec3Negate(this);
		}

		[Inline]
		public Vector3 Add(Vector3 v2)
		{
			return tA.Vec3Add(this, v2);
		}

		[Inline]
		public Vector3 Substract(Vector3 v2)
		{
			return tA.Vec3Substract(this, v2);
		}

		[Inline]
		public Vector3 Multiply(Vector3 v2)
		{
			return tA.Vec3Multiply(this, v2);
		}

		[Inline]
		public Vector3 Divide(Vector3 v2)
		{
			return tA.Vec3Divide(this, v2);
		}

		[Inline]
		public float DotProduct(Vector3 v2)
		{
			return tA.Vec3DotProduct(this, v2);
		}

		[Inline]
		public float DotProduct(float v2x, float v2y, float v2z)
		{
			return tA.Vec3DotProduct(this.x, this.y, this.z, v2x, v2y, v2z);
		}

		[Inline]
		public float Length(Vector3 v2)
		{
			return tA.Vec3Length(this);
		}

		[Inline]
		public float LengthSquare(Vector3 v2)
		{
			return tA.Vec3LengthSquare(this);
		}

		[Inline]
		public Vector3 CrossProduct(Vector3 v2)
		{
			return tA.Vec3CrossProduct(this, v2);
		}

		[Inline]
		public float Distance(Vector3 v2)
		{
			return tA.Vec3Distance(this, v2);
		}

		[Inline]
		public Vector3 Normalize(Vector3 v2)
		{
			return tA.Vec3Normalize(this);
		}

		[Inline]
		public Vector3 Transform(Mat4 m)
		{
			return tA.Vec3Transform(this, m);
		}

		[Inline]
		public Vector3 Lerp(Vector3 v2, float value)
		{
			return tA.Vec3Lerp(this, v2, value);
		}

		public static Vector3 Zero()
		{
			return Vector3(0);
		}

		public static Vector3 One()
		{
			return Vector3(1);
		}
	}
}
