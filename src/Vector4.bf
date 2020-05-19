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

		public static Vector4 Zero()
		{
			return Vector4(0.0f);
		}
	}
}
