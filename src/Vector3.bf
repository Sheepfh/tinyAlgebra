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

		public static Vector3 Zero()
		{
			return Vector3(0);
		}

		public static Vector3 One()
		{
			return Vector3(1);
		}

		public void Transform(Mat4 mat)
		{

		}
	}
}
