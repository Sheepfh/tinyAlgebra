using System;

namespace tinyAlgebra
{
	struct Vector2d
	{
		public double x;
		public double y;

		public this(double x, double y)
		{
			this.x = x;
			this.y = y;
		}
		public this(double value)
		{
			this.x = value;
			this.y = value;
		}

		public double this[int index]
		{
			get { return index == 1 ? y : x; }
			set mut { if (index == 1) y = value; else x = value; }
		}

		[Inline]
		public static Vector2d operator+(Vector2d lv, Vector2d rv)
		{
			return tA.Vec2Add(lv, rv);
		}

		[Inline]
		public static Vector2d operator+(Vector2d lv, double rv)
		{
			return tA.Vec2AddValue(lv, rv);
		}

		[Inline]
		public static Vector2d operator-(Vector2d lv, Vector2d rv)
		{
			return tA.Vec2Substract(lv, rv);
		}

		[Inline]
		public static Vector2d operator-(Vector2d lv, double rv)
		{
			return tA.Vec2SubstractValue(lv, rv);
		}

		[Inline]
		public static Vector2d operator*(Vector2d lv, Vector2d rv)
		{
			return tA.Vec2Multiply(lv, rv);
		}

		[Inline]
		public static Vector2d operator*(Vector2d lv, double rv)
		{
			return tA.Vec2Scale(lv, rv);
		}

		[Inline]
		public static Vector2d operator/(Vector2d lv, Vector2d rv)
		{
			return tA.Vec2Divide(lv, rv);
		}

		[Inline]
		public Vector2d AddValue(double value)
		{
			return tA.Vec2AddValue(this, value);
		}

		[Inline]
		public Vector2d SubstractValue(double value)
		{
			return tA.Vec2SubstractValue(this, value);
		}

		[Inline]
		public Vector2d Scale(double value)
		{
			return tA.Vec2Scale(this, value);
		}

		[Inline]
		public Vector2d Add(Vector2d v2)
		{
			return tA.Vec2Add(this, v2);
		}

		[Inline]
		public Vector2d Substract(Vector2d v2)
		{
			return tA.Vec2Substract(this, v2);
		}

		[Inline]
		public Vector2d Multiply(Vector2d v2)
		{
			return tA.Vec2Multiply(this, v2);
		}

		[Inline]
		public Vector2d Divide(Vector2d v2)
		{
			return tA.Vec2Divide(this, v2);
		}

		[Inline]
		public double DotProduct(Vector2d v2)
		{
			return tA.Vec2DotProduct(this, v2);
		}

		[Inline]
		public double Length()
		{
			return tA.Vec2Length(this);
		}

		[Inline]
		public double LengthSquare()
		{
			return tA.Vec2LengthSquare(this);
		}

		[Inline]
		public double Distance(Vector2d v2)
		{
			return tA.Vec2Distance(this, v2);
		}

		[Inline]
		public Vector2d Lerp(Vector2d v2, double value)
		{
			return tA.Vec2Lerp(this, v2, value);
		}

		[Inline]
		public Vector2d Normalize()
		{
			return tA.Vec2Normalize(this);
		}

		public static Vector2d Zero()
		{
			return Vector2d(0);
		}

		public static Vector2d One()
		{
			return Vector2d(1);
		}
	}
}
