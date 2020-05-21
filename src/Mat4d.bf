using System;

namespace tinyAlgebra
{
	[Union]
	struct Mat4d
	{
		public double[16] array;
		public Vector4d[4] cols;

		public this(Vector4d col1, Vector4d col2, Vector4d col3, Vector4d col4)
		{
			this.cols[0] = col1;
			this.cols[1] = col2;
			this.cols[2] = col3;
			this.cols[3] = col4;
		}

		public this(Vector4d value)
		{
			this.cols[0] = value;
			this.cols[1] = value;
			this.cols[2] = value;
			this.cols[3] = value;
		}

		public Vector4d this[int index]
		{
			get { return cols[index]; }
			set mut { cols[index] = value; }
		}

		public double this[int column, int index]
		{
			get { return cols[column][index]; }
			set mut { cols[column][index] = value; }
		}

		[Inline]
		public static Mat4d operator+(Mat4d lv, Mat4d rv)
		{
			return tA.Mat4Add(lv, rv);
		}

		[Inline]
		public static Mat4d operator-(Mat4d lv, Mat4d rv)
		{
			return tA.Mat4Substract(lv, rv);
		}

		[Inline]
		public static Mat4d operator*(Mat4d lv, Mat4d rv)
		{
			return tA.Mat4Multiply(lv, rv);
		}

		[Inline]
		public double Determinant()
		{
			return tA.Mat4Determinant(this);
		}

		[Inline]
		public double Trace()
		{
			return tA.Mat4Trace(this);
		}

		[Inline]
		public Mat4d Add(Mat4d m2)
		{
			return tA.Mat4Add(this, m2);
		}

		[Inline]
		public Mat4d Substract(Mat4d m2)
		{
			return tA.Mat4Substract(this, m2);
		}

		[Inline]
		public Mat4d Multiply(Mat4d m2)
		{
			return tA.Mat4Multiply(this, m2);
		}

		[Inline]
		public Mat4d Normalize()
		{
			return tA.Mat4Normalize(this);
		}

		[Inline]
		public Mat4d Transpose()
		{
			return tA.Mat4Transpose(this);
		}

		public static Mat4d Zero()
		{
			return Mat4d(Vector4d(0));
		}

		public static Mat4d Identity()
		{
			Vector4d col1 = Vector4d(1.0f, 0.0f, 0.0f, 0.0f);
			Vector4d col2 = Vector4d(0.0f, 1.0f, 0.0f, 0.0f);
			Vector4d col3 = Vector4d(0.0f, 0.0f, 1.0f, 0.0f);
			Vector4d col4 = Vector4d(0.0f, 0.0f, 0.0f, 1.0f);

			return Mat4d(col1, col2, col3, col4);
		}

		public static Mat4d Ortho(double left, double right, double bottom, double top)
		{
			Mat4d m = Mat4d.Identity();

			m.cols[0].x = 2f / (right - left);
			m.cols[1].y = 2f / (top - bottom);
			m.cols[2].z = -1f;
			m.cols[3].x = -(right + left) / (right - left);
			m.cols[3].y = -(top + bottom) / (top - bottom);

			return m;
		}

		public static Mat4d Perspective(double fov, double height, double width, double near, double far)
		{
			Mat4d m = Mat4d.Zero();
			double aspect = height / width;
			double fovRad = 1.0f / Math.Tan(fov * 0.5f / 180.0f * 3.14159f);
			double top = near * Math.Tan(fovRad * 0.5f);
			double bottom = -top;
			double right = top * aspect;
			double left = -right;

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
		// Mat4dInvert

		public static Mat4d Translation(double x, double y, double z)
		{
			Vector4d col1 = Vector4d(1.0f, 0.0f, 0.0f, 0.0f);
			Vector4d col2 = Vector4d(0.0f, 1.0f, 0.0f, 0.0f);
			Vector4d col3 = Vector4d(0.0f, 0.0f, 1.0f, 0.0f);
			Vector4d col4 = Vector4d(   x,    y,    z, 1.0f);

			return Mat4d(col1, col2, col3, col4);
		}

		public static Mat4d Scale(double x, double y, double z)
		{
			 Vector4d col1 = Vector4d(   x, 0.0f, 0.0f, 0.0f);
			 Vector4d col2 = Vector4d(0.0f,    y, 0.0f, 0.0f);
			 Vector4d col3 = Vector4d(0.0f, 0.0f,    z, 0.0f);
			 Vector4d col4 = Vector4d(0.0f, 0.0f, 0.0f, 1.0f);

			 return Mat4d(col1, col2, col3, col4);
		}

		public static Mat4d Scale(Vector3 v)
		{
			 Vector4d col1 = Vector4d( v.x, 0.0f, 0.0f, 0.0f);
			 Vector4d col2 = Vector4d(0.0f,  v.y, 0.0f, 0.0f);
			 Vector4d col3 = Vector4d(0.0f, 0.0f,  v.z, 0.0f);
			 Vector4d col4 = Vector4d(0.0f, 0.0f, 0.0f, 1.0f);

			 return Mat4d(col1, col2, col3, col4);
		}

		// TODO:
		// Custom axis
		// xyz rotation

		public static Mat4d RotationX(double angle)
		{
			Mat4d m = Mat4d.Identity();

			double cosT = Math.Cos(angle);
			double sinT = Math.Sin(angle);

			m.cols[1].y = cosT;
			m.cols[1].z = -sinT;
			m.cols[2].y = sinT;
			m.cols[2].z = -cosT;

			return m;
		}

		public static Mat4d RotationY(double angle)
		{
			Mat4d m = Mat4d.Identity();

			double cosT = Math.Cos(angle);
			double sinT = Math.Sin(angle);

			m.cols[0].x = cosT;
			m.cols[0].z = sinT;
			m.cols[2].x = -sinT;
			m.cols[2].z = cosT;

			return m;
		}

		public static Mat4d RotationZ(double angle)
		{
			Mat4d m = Mat4d.Identity();

			double cosT = Math.Cos(angle);
			double sinT = Math.Sin(angle);

			m.cols[0].x = cosT;
			m.cols[0].y = -sinT;
			m.cols[1].x = sinT;
			m.cols[1].y = cosT;

			return m;
		}
	}
}
