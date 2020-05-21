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

		public Vector4 this[int index]
		{
			get { return cols[index]; }
			set mut { cols[index] = value; }
		}

		public float this[int column, int index]
		{
			get { return cols[column][index]; }
			set mut { cols[column][index] = value; }
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

		public static Mat4 Ortho(float left, float right, float bottom, float top)
		{
			Mat4 m = Mat4.Identity();

			m.cols[0].x = 2f / (right - left);
			m.cols[1].y = 2f / (top - bottom);
			m.cols[2].z = -1f;
			m.cols[3].x = -(right + left) / (right - left);
			m.cols[3].y = -(top + bottom) / (top - bottom);

			return m;
		}

		public static Mat4 Perspective(float fov, float height, float width, float near, float far)
		{
			Mat4 m = Mat4.Zero();
			float aspect = height / width;
			float fovRad = 1.0f / Math.Tan(fov * 0.5f / 180.0f * 3.14159f);
			float top = near * Math.Tan(fovRad * 0.5f);
			float bottom = -top;
			float right = top * aspect;
			float left = -right;

			m.cols[0].x = (near  * 2.0f) / (right - left);

			m.cols[1].y = (near  * 2.0f) / (top - bottom);

			m.cols[2].x = (right + left) / (right - left);
			m.cols[2].y = (right + left) / (right - left);
			m.cols[2].z = (top   + bottom) / (top   - bottom);
			m.cols[2].w = -1.0f;

			m.cols[3].z = -((2.0f * far * near) / (far - near));

			return m;
		}

		// TODO
		// mat4Invert

		public static Mat4 Translation(float x, float y, float z)
		{
			Vector4 col1 = Vector4(1.0f, 0.0f, 0.0f, 0.0f);
			Vector4 col2 = Vector4(0.0f, 1.0f, 0.0f, 0.0f);
			Vector4 col3 = Vector4(0.0f, 0.0f, 1.0f, 0.0f);
			Vector4 col4 = Vector4(   x,    y,    z, 1.0f);

			return Mat4(col1, col2, col3, col4);
		}

		public static Mat4 Scale(float x, float y, float z)
		{
			 Vector4 col1 = Vector4(   x, 0.0f, 0.0f, 0.0f);
			 Vector4 col2 = Vector4(0.0f,    y, 0.0f, 0.0f);
			 Vector4 col3 = Vector4(0.0f, 0.0f,    z, 0.0f);
			 Vector4 col4 = Vector4(0.0f, 0.0f, 0.0f, 1.0f);

			 return Mat4(col1, col2, col3, col4);
		}

		public static Mat4 Scale(Vector3 v)
		{
			 Vector4 col1 = Vector4( v.x, 0.0f, 0.0f, 0.0f);
			 Vector4 col2 = Vector4(0.0f,  v.y, 0.0f, 0.0f);
			 Vector4 col3 = Vector4(0.0f, 0.0f,  v.z, 0.0f);
			 Vector4 col4 = Vector4(0.0f, 0.0f, 0.0f, 1.0f);

			 return Mat4(col1, col2, col3, col4);
		}

		// TODO:
		// Custom axis
		// xyz rotation

		public static Mat4 RotationX(float angle)
		{
			Mat4 m = Mat4.Identity();

			float cosT = Math.Cos(angle);
			float sinT = Math.Sin(angle);

			m.cols[1].y = cosT;
			m.cols[1].z = -sinT;
			m.cols[2].y = sinT;
			m.cols[2].z = -cosT;

			return m;
		}

		public static Mat4 RotationY(float angle)
		{
			Mat4 m = Mat4.Identity();

			float cosT = Math.Cos(angle);
			float sinT = Math.Sin(angle);

			m.cols[0].x = cosT;
			m.cols[0].z = sinT;
			m.cols[2].x = -sinT;
			m.cols[2].z = cosT;

			return m;
		}

		public static Mat4 RotationZ(float angle)
		{
			Mat4 m = Mat4.Identity();

			float cosT = Math.Cos(angle);
			float sinT = Math.Sin(angle);

			m.cols[0].x = cosT;
			m.cols[0].y = -sinT;
			m.cols[1].x = sinT;
			m.cols[1].y = cosT;

			return m;
		}
	}
}
