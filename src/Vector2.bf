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
