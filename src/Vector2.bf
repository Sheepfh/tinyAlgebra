using System;

namespace tinyAlgebra
{
	struct Vector2
	{
		public float x;
		public float y;

		public this(float x, float y)
		{
			this.x = x;
			this.y = y;
		}
		public this(float value)
		{
			this.x = value;
			this.y = value;
		}

		public float this[int index]
		{
			get { return index == 1 ? y : x; }
			set mut { if (index == 1) y = value; else x = value; }
		}

		[Inline]
		public static Vector2 operator+(Vector2 lv, Vector2 rv)
		{
			return tA.Vec2Add(lv, rv);
		}

		[Inline]
		public static Vector2 operator+(Vector2 lv, float rv)
		{
			return tA.Vec2AddValue(lv, rv);
		}

		[Inline]
		public static Vector2 operator-(Vector2 lv, Vector2 rv)
		{
			return tA.Vec2Substract(lv, rv);
		}

		[Inline]
		public static Vector2 operator-(Vector2 lv, float rv)
		{
			return tA.Vec2SubstractValue(lv, rv);
		}

		[Inline]
		public static Vector2 operator*(Vector2 lv, Vector2 rv)
		{
			return tA.Vec2Multiply(lv, rv);
		}

		[Inline]
		public static Vector2 operator*(Vector2 lv, float rv)
		{
			return tA.Vec2Scale(lv, rv);
		}

		[Inline]
		public static Vector2 operator/(Vector2 lv, Vector2 rv)
		{
			return tA.Vec2Divide(lv, rv);
		}

		[Inline]
		public Vector2 AddValue(float value)
		{
			return tA.Vec2AddValue(this, value);
		}

		[Inline]
		public Vector2 SubstractValue(float value)
		{
			return tA.Vec2SubstractValue(this, value);
		}

		[Inline]
		public Vector2 Scale(float value)
		{
			return tA.Vec2Scale(this, value);
		}

		[Inline]
		public Vector2 Add(Vector2 v2)
		{
			return tA.Vec2Add(this, v2);
		}

		[Inline]
		public Vector2 Substract(Vector2 v2)
		{
			return tA.Vec2Substract(this, v2);
		}

		[Inline]
		public Vector2 Multiply(Vector2 v2)
		{
			return tA.Vec2Multiply(this, v2);
		}

		[Inline]
		public Vector2 Divide(Vector2 v2)
		{
			return tA.Vec2Divide(this, v2);
		}

		[Inline]
		public float DotProduct(Vector2 v2)
		{
			return tA.Vec2DotProduct(this, v2);
		}

		[Inline]
		public float Length()
		{
			return tA.Vec2Length(this);
		}

		[Inline]
		public float LengthSquare()
		{
			return tA.Vec2LengthSquare(this);
		}

		[Inline]
		public float Distance(Vector2 v2)
		{
			return tA.Vec2Distance(this, v2);
		}

		[Inline]
		public Vector2 Lerp(Vector2 v2, float value)
		{
			return tA.Vec2Lerp(this, v2, value);
		}

		[Inline]
		public Vector2 Normalize()
		{
			return tA.Vec2Normalize(this);
		}

		public static Vector2 Zero()
		{
			return Vector2(0);
		}

		public static Vector2 One()
		{
			return Vector2(1);
		}
	}
}
