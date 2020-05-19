using System;

namespace tinyAlgebra
{
	[Union]
	struct Mat4
	{
		public float[16] array;
		public Vector4[4] cols;

		public this(Vector4 col1, Vector4 col2, Vector4 col3, Vector4 col4)
		{
			this.cols[0] = col1;
			this.cols[1] = col2;
			this.cols[2] = col3;
			this.cols[3] = col4;
		}

		public this(Vector4 value)
		{
			this.cols[0] = value;
			this.cols[1] = value;
			this.cols[2] = value;
			this.cols[3] = value;
		}

		public static Mat4 Zero()
		{
			return Mat4(Vector4(0));
		}

		public static Mat4 Identity()
		{
			Vector4 col1 = Vector4(1.0f, 0.0f, 0.0f, 0.0f);
			Vector4 col2 = Vector4(0.0f, 1.0f, 0.0f, 0.0f);
			Vector4 col3 = Vector4(0.0f, 0.0f, 1.0f, 0.0f);
			Vector4 col4 = Vector4(0.0f, 0.0f, 0.0f, 1.0f);

			return Mat4(col1, col2, col3, col4);
		}	
	}
}
