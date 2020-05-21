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

		[Inline]
		public static Mat4 operator+(Mat4 lv, Mat4 rv)
		{
			return tA.Mat4Add(lv, rv);
		}

		[Inline]
		public static Mat4 operator-(Mat4 lv, Mat4 rv)
		{
			return tA.Mat4Substract(lv, rv);
		}

		[Inline]
		public static Mat4 operator*(Mat4 lv, Mat4 rv)
		{
			return tA.Mat4Multiply(lv, rv);
		}

		[Inline]
		public float Determinant()
		{
			return tA.Mat4Determinant(this);
		}

		[Inline]
		public float Trace()
		{
			return tA.Mat4Trace(this);
		}

		[Inline]
		public Mat4 Add(Mat4 m2)
		{
			return tA.Mat4Add(this, m2);
		}

		[Inline]
		public Mat4 Substract(Mat4 m2)
		{
			return tA.Mat4Substract(this, m2);
		}

		[Inline]
		public Mat4 Multiply(Mat4 m2)
		{
			return tA.Mat4Multiply(this, m2);
		}

		[Inline]
		public Mat4 Normalize()
		{
			return tA.Mat4Normalize(this);
		}

		[Inline]
		public Mat4 Transpose()
		{
			return tA.Mat4Transpose(this);
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
