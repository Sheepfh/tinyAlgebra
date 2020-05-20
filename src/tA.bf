using System;

namespace tinyAlgebra
{
	static class tA
	{
		//
		// Vector 2 operations //
		//
		public static Vector2 Vec2AddValue(Vector2 v, float value)
		{
			return Vector2(v.x + value, v.y + value); 
		}

		public static Vector2 Vec2SubstractValue(Vector2 v, float value)
		{
			return Vector2(v.x - value, v.y - value);
		}

		public static Vector2 Vec2Scale(Vector2 v, float value)
		{
			return Vector2(v.x * value, v.y * value);
		}

		public static Vector2 Vec2Add(Vector2 v1, Vector2 v2)
		{
			return Vector2(v1.x + v2.x, v1.y + v2.y);
		}

		public static Vector2 Vec2Substract(Vector2 v1, Vector2 v2)
		{
			return Vector2(v1.x - v2.x, v1.y - v2.y);
		}

		public static Vector2 Vec2Multiply(Vector2 v1, Vector2 v2)
		{
			return Vector2(v1.x * v2.x, v1.y * v2.y);
		}

		public static Vector2 Vec2Divide(Vector2 v1, Vector2 v2)
		{
			return Vector2(v1.x / v2.x, v1.y / v2.y);
		}

		public static float Vec2DotProduct(Vector2 v1, Vector2 v2)
		{
			return v1.x * v2.x + v1.y * v2.y;
		}

		public static float Vec2Length(Vector2 v)
		{
			return Math.Sqrt((v.x * v.x) + (v.y * v.y));
		}

		public static float Vec2LengthSquare(Vector2 v)
		{
			return (v.x * v.x) + (v.y * v.y);
		}

		public static float Vec2Distance(Vector2 v1, Vector2 v2)
		{
			return Math.Sqrt((v1.x - v2.x) * (v1.x - v2.x) + (v1.y - v2.y) * (v1.y - v2.y));
		}

		public static Vector2 Vec2Lerp(Vector2 v1, Vector2 v2, float value)
		{
			return Vector2(v1.x + value * (v2.x - v1.x), v1.y + value * (v2.y - v1.y));
		}

		public static Vector2 Vec2Normalize(Vector2 v)
		{
			float length = Vec2Length(v);

			return Vector2(v.x / length, v.y / length);
		}

		//
		// Vector 3 operations //
		//

		public static Vector3 Vec3AddValue(Vector3 v, float value)
		{
			return Vector3(v.x + value, v.y + value, v.z + value);
		}

		public static Vector3 Vec3SubstractValue(Vector3 v, float value)
		{
			return Vector3(v.x - value, v.y - value, v.z - value);
		}

		public static Vector3 Vec3Scale(Vector3 v, float value)
		{
			return Vector3(v.x * value, v.y * value, v.z * value);
		}

		public static Vector3 Vec3Negate(Vector3 v)
		{
			return Vector3(-v.x, -v.y, -v.z);
		}

		public static Vector3 Vec3Add(Vector3 v1, Vector3 v2)
		{
			return Vector3(v1.x + v2.x, v1.y + v2.y, v1.z + v2.z);
		}

		public static Vector3 Vec3Substract(Vector3 v1, Vector3 v2)
		{
			return Vector3(v1.x - v2.x, v1.y - v2.y, v1.z - v2.z);
		}

		public static Vector3 Vec3Multiply(Vector3 v1, Vector3 v2)
		{
			return Vector3(v1.x * v2.x, v1.y * v2.y, v1.z * v2.z);
		}

		public static Vector3 Vec3Divide(Vector3 v1, Vector3 v2)
		{
			return Vector3(v1.x / v2.x, v1.y / v2.y, v1.z / v2.z);
		}

		public static float Vec3DotProduct(Vector3 v1, Vector3 v2)
		{
			return v1.x * v2.x + v1.y * v2.y + v1.z * v2.z;
		}

		public static float Vec3DotProduct(float v1x, float v1y, float v1z, float v2x, float v2y, float v2z)
		{
			return v1x * v2x + v1y * v2y + v1z * v2z;
		}

		public static float Vec3Length(Vector3 v)
		{
			return Math.Sqrt((v.x * v.x) + (v.y * v.y) + (v.z * v.z));
		}

		public static float Vec3LengthSquare(Vector3 v)
		{
			return (v.x * v.x) + (v.y * v.y) + (v.z * v.z);
		}

		public static Vector3 Vec3CrossProduct(Vector3 v1, Vector3 v2)
		{
			return Vector3((v1.y * v2.z) - (v1.z * v2.y), (v1.z * v2.x) - (v1.x * v2.z), (v1.x * v2.y) - (v1.y * v2.x));
		}

		public static float Vec3Distance(Vector3 v1, Vector3 v2)
		{
			return Math.Sqrt((v1.x - v2.x) *(v1.x - v2.x) + (v1.y - v2.y) *(v1.y - v2.y) + (v1.z - v2.z) *(v1.z - v2.z));
		}

		public static Vector3 Vec3Normalize(Vector3 v)
		{
			float length = Vec3Length(v);
			return Vector3(v.x / length, v.y / length, v.z / length);
		}

		public static Vector3 Vec3Transform(Vector3 v, Mat4 m)
		{
			float x = m.cols[0].x * v.x + m.cols[1].x * v.y + m.cols[2].x * v.z + m.cols[3].x;
			float y = m.cols[0].y * v.x + m.cols[1].y * v.y + m.cols[2].y * v.z + m.cols[3].y;
			float z = m.cols[0].z * v.x + m.cols[1].z * v.y + m.cols[2].z * v.z + m.cols[3].z;

			return Vector3(x, y, z);
		}

		public static Vector3 Vec3QuaternionRotation(Vector3 v, Quaternion q)
		{
			return Vector3(
				v.x * (q.x*q.x + q.w*q.w - q.y*q.y - q.z*q.z) + v.y * (2*q.x*q.y - 2*q.w*q.z) + v.z * (2*q.x*q.z + 2*q.w*q.y),
				v.x * (2*q.w*q.z + 2*q.x*q.y) + v.y * (q.w*q.w - q.x*q.x + q.y*q.y - q.z*q.z) + v.z * (-2*q.w*q.x + 2*q.y*q.z),
				v.x * (-2*q.w*q.y + 2*q.x*q.z) + v.y * (2*q.w*q.x + 2*q.y*q.z) + v.z * (q.w*q.w - q.x*q.x - q.y*q.y + q.z*q.z)
			);
		}	

		public static Vector3 Vec3Lerp(Vector3 v1, Vector3 v2, float value)
		{
			return Vector3(
				v1.x + value * (v2.x - v1.x),
				v1.y + value * (v2.y - v1.y),
				v1.z + value * (v2.z - v1.z)
			);
		}


		//
		// Vector4 Operations //
		//

		public static Vector4 Vec4AddValue(Vector4 v1, float value)
		{
			return Vector4(v1.x + value, v1.y + value, v1.z + value, v1.w + value);
		}

		public static Vector4 Vec4SubstractValue(Vector4 v1, float value)
		{
			return Vector4(v1.x - value, v1.y - value, v1.z - value, v1.w - value);
		}

		public static Vector4 Vec4Scale(Vector4 v1, float value)
		{
			return Vector4(v1.x * value, v1.y * value, v1.z * value, v1.w *  value);
		}

		public static Vector4 Vec4Add(Vector4 v1, Vector4 v2)
		{
			return Vector4(v1.x + v2.x, v1.y + v2.y, v1.z + v2.z, v1.w + v2.w);
		}

		public static Vector4 Vec4Substract(Vector4 v1, Vector4 v2)
		{
			return Vector4(v1.x - v2.x, v1.y - v2.y, v1.z - v2.z, v1.w - v2.w);
		}

		public static Vector4 Vec4Multiply(Vector4 v1, Vector4 v2)
		{
			return Vector4(v1.x * v2.x, v1.y * v2.y, v1.z * v2.z, v1.w * v2.w);
		}

		public static Vector4 Vec4Divide(Vector4 v1, Vector4 v2)
		{
			return Vector4(v1.x / v2.x, v1.y / v2.y, v1.z / v2.z, v1.w / v2.w);
		}

		public static float Vec4DotProduct(Vector4 v1, Vector4 v2)
		{
			return v1.x * v2.x + v1.y * v2.y + v1.z * v2.z + v1.w * v2.w;
		}

		public static float Vec4DotProduct(float v1x, float v1y, float v1z, float v1w, float v2x, float v2y, float v2z, float v2w)
		{
			return v1x * v2x + v1y * v2y + v1z * v2z + v1w * v2w;
		}

		public static float Vec4Length(Vector4 v)
		{
			return Math.Sqrt((v.x * v.x) + (v.y * v.y) + (v.z * v.z) + (v.w * v.w));
		}

		public static Vector4 Vec4Normalize(Vector4 v)
		{
			float length = Vec4Length(v);
			return Vector4(v.x / length, v.y / length, v.z / length, v.w / length);
		}

		public static Vector4 Vec4Lerp(Vector4 v1, Vector4 v2, float value)
		{
			return Vector4(
				v1.x + value * (v2.x - v1.x),
				v1.y + value * (v2.y - v1.y),
				v1.z + value * (v2.w - v1.z),
				v1.w + value * (v2.z - v1.w)
			);
		}

		//
		// Matrix operations //
		//

		public static float Mat4Determinant(Mat4 m)
		{
			float m00 = m.cols[0].x, m01 = m.cols[1].x, m02 = m.cols[2].x, m03 = m.cols[3].x;
			float m10 = m.cols[0].y, m11 = m.cols[1].y, m12 = m.cols[2].y, m13 = m.cols[3].y;
			float m20 = m.cols[0].z, m21 = m.cols[1].z, m22 = m.cols[2].z, m23 = m.cols[3].z;
			float m30 = m.cols[0].w, m31 = m.cols[1].w, m32 = m.cols[2].w, m33 = m.cols[3].w;

			float result = m00*(m11*(m22*m33 - m23*m32) - m12*(m23*m31 - m21*m33) + m13*(m21*m32 - m22*m31)) -
						   m01*(m12*(m23*m30 - m20*m33) - m13*(m20*m32 - m22*m30) + m10*(m22*m33 - m23*m32)) +
						   m02*(m13*(m20*m31 - m21*m30) - m10*(m21*m33 - m23*m31) + m11*(m23*m30 - m20*m33)) -
						   m03*(m10*(m21*m32 - m22*m31) - m11*(m22*m30 - m20*m32) + m12*(m20*m31 - m21*m30));

			return result;
		}

		public static float Mat4Trace(Mat4 m)
		{
			return m.cols[0].x + m.cols[1].y + m.cols[2].z + m.cols[3].w;
		}

		public static Mat4 Mat4Add(Mat4 m1, Mat4 m2)
		{
			Mat4 r = Mat4.Zero();

			r.cols[0].x = m1.cols[0].x + m2.cols[0].x;
			r.cols[0].y = m1.cols[0].y + m2.cols[0].y;
			r.cols[0].z = m1.cols[0].z + m2.cols[0].z;
			r.cols[0].w = m1.cols[0].w + m2.cols[0].w;
			r.cols[1].x = m1.cols[1].x + m2.cols[1].x;
			r.cols[1].x = m1.cols[1].x + m2.cols[1].x;
			r.cols[1].x = m1.cols[1].x + m2.cols[1].x;
			r.cols[1].x = m1.cols[1].x + m2.cols[1].x;
			r.cols[2].x = m1.cols[2].x + m2.cols[2].x;
			r.cols[2].y = m1.cols[2].y + m2.cols[2].y;
			r.cols[2].z = m1.cols[2].z + m2.cols[2].z;
			r.cols[2].w = m1.cols[2].w + m2.cols[2].w;
			r.cols[3].x = m1.cols[3].x + m2.cols[3].x;
			r.cols[3].x = m1.cols[3].x + m2.cols[3].x;
			r.cols[3].x = m1.cols[3].x + m2.cols[3].x;
			r.cols[3].x = m1.cols[3].x + m2.cols[3].x;

			return r;
		}
		
		public static Mat4 Mat4Substract(Mat4 m1, Mat4 m2)
		{
			Mat4 r = Mat4.Zero();

			r.cols[0].x = m1.cols[0].x - m2.cols[0].x;
			r.cols[0].y = m1.cols[0].y - m2.cols[0].y;
			r.cols[0].z = m1.cols[0].z - m2.cols[0].z;
			r.cols[0].w = m1.cols[0].w - m2.cols[0].w;
			r.cols[1].x = m1.cols[1].x - m2.cols[1].x;
			r.cols[1].x = m1.cols[1].x - m2.cols[1].x;
			r.cols[1].x = m1.cols[1].x - m2.cols[1].x;
			r.cols[1].x = m1.cols[1].x - m2.cols[1].x;
			r.cols[2].x = m1.cols[2].x - m2.cols[2].x;
			r.cols[2].y = m1.cols[2].y - m2.cols[2].y;
			r.cols[2].z = m1.cols[2].z - m2.cols[2].z;
			r.cols[2].w = m1.cols[2].w - m2.cols[2].w;
			r.cols[3].x = m1.cols[3].x - m2.cols[3].x;
			r.cols[3].x = m1.cols[3].x - m2.cols[3].x;
			r.cols[3].x = m1.cols[3].x - m2.cols[3].x;
			r.cols[3].x = m1.cols[3].x - m2.cols[3].x;

			return r;
		}

		public static Mat4 Mat4Normalize(Mat4 m)
		{
			float det = Mat4Determinant(m);

			Vector4 col1 = Vector4(m.cols[0].x / det, m.cols[0].y / det, m.cols[0].z / det, m.cols[0].w / det);
			Vector4 col2 = Vector4(m.cols[1].x / det, m.cols[1].y / det, m.cols[1].z / det, m.cols[1].w / det);
			Vector4 col3 = Vector4(m.cols[2].x / det, m.cols[2].y / det, m.cols[2].z / det, m.cols[2].w / det);
			Vector4 col4 = Vector4(m.cols[3].x / det, m.cols[3].y / det, m.cols[3].z / det, m.cols[3].w / det);

			return Mat4(col1, col2, col3, col4);
		}

		public static Mat4 Mat4Transpose(Mat4 m)
		{
			Vector4 col1 = Vector4(m.cols[0].x, m.cols[1].x, m.cols[2].x, m.cols[3].x);
			Vector4 col2 = Vector4(m.cols[0].y, m.cols[1].y, m.cols[2].y, m.cols[3].y);
			Vector4 col3 = Vector4(m.cols[0].z, m.cols[1].z, m.cols[2].z, m.cols[3].z);
			Vector4 col4 = Vector4(m.cols[0].w, m.cols[1].w, m.cols[2].w, m.cols[3].w);

			return Mat4(col1, col2, col3, col4);
		}

		// TODO
		// mat4Invert

		public static Mat4 Mat4Translate(float x, float y, float z)
		{
			Vector4 col1 = Vector4(1.0f, 0.0f, 0.0f, 0.0f);
			Vector4 col2 = Vector4(0.0f, 1.0f, 0.0f, 0.0f);
			Vector4 col3 = Vector4(0.0f, 0.0f, 1.0f, 0.0f);
			Vector4 col4 = Vector4(   x,    y,    z, 1.0f);

			return Mat4(col1, col2, col3, col4);
		}

		public static Mat4 Mat4Scale(float x, float y, float z)
 		{
			 Vector4 col1 = Vector4(   x, 0.0f, 0.0f, 0.0f);
			 Vector4 col2 = Vector4(0.0f,    y, 0.0f, 0.0f);
			 Vector4 col3 = Vector4(0.0f, 0.0f,    z, 0.0f);
			 Vector4 col4 = Vector4(0.0f, 0.0f, 0.0f, 1.0f);

			 return Mat4(col1, col2, col3, col4);
		}

		public static Mat4 Mat4Scale(Vector3 v)
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

		public static Mat4 Mat4RotateX(float angle)
		{
			Mat4 m = Mat4.Identity();

			float cosT = Math.Cos(angle);
 			float sinT = Math.Sin(angle);

			m.cols[1].y = cosT;
			m.cols[1].z = sinT;
			m.cols[2].y = -sinT;
			m.cols[2].z = cosT;

			return m;
		}

		public static Mat4 Mat4RotateY(float angle)
		{
			Mat4 m = Mat4.Identity();

			float cosT = Math.Cos(angle);
			float sinT = Math.Sin(angle);

			m.cols[0].x = cosT;
			m.cols[0].z = -sinT;
			m.cols[2].x = sinT;
			m.cols[2].z = cosT;

			return m;
		}

		public static Mat4 Mat4RotateZ(float angle)
		{
			Mat4 m = Mat4.Identity();

			float cosT = Math.Cos(angle);
			float sinT = Math.Sin(angle);

			m.cols[0].x = cosT;
			m.cols[0].y = sinT;
			m.cols[1].x = -sinT;
			m.cols[1].y = cosT;

			return m;
		}

		public static Mat4 Mat4Multiply(Mat4 m1, Mat4 m2)
		{
			Vector4 col1 = Vector4.Zero();
			Vector4 col2 = Vector4.Zero();
			Vector4 col3 = Vector4.Zero();
			Vector4 col4 = Vector4.Zero();

			col1.x = Vec4DotProduct(
				m1.cols[0].x, m1.cols[1].x, m1.cols[2].x, m1.cols[3].x,
				m2.cols[0].x, m2.cols[0].y, m2.cols[0].z, m2.cols[0].w
			);
			col1.y = Vec4DotProduct(
				m1.cols[0].y, m1.cols[1].y, m1.cols[2].y, m1.cols[3].y,
				m2.cols[0].x, m2.cols[0].y, m2.cols[0].z, m2.cols[0].w
			);
			col1.z = Vec4DotProduct(
				m1.cols[0].z, m1.cols[1].z, m1.cols[2].z, m1.cols[3].z,
				m2.cols[0].x, m2.cols[0].y, m2.cols[0].z, m2.cols[0].w
			);
			col1.w = Vec4DotProduct(
				m1.cols[0].w, m1.cols[1].w, m1.cols[2].w, m1.cols[3].w,
				m2.cols[0].x, m2.cols[0].y, m2.cols[0].z, m2.cols[0].w
			);
			//
			col2.x = Vec4DotProduct(
				m1.cols[0].x, m1.cols[1].x, m1.cols[2].x, m1.cols[3].x,
				m2.cols[1].x, m2.cols[1].y, m2.cols[1].z, m2.cols[1].w
			);
			col2.y = Vec4DotProduct(
				m1.cols[0].y, m1.cols[1].y, m1.cols[2].y, m1.cols[3].y,
				m2.cols[1].x, m2.cols[1].y, m2.cols[1].z, m2.cols[1].w
			);
			col2.z = Vec4DotProduct(
				m1.cols[0].z, m1.cols[1].z, m1.cols[2].z, m1.cols[3].z,
				m2.cols[1].x, m2.cols[1].y, m2.cols[1].z, m2.cols[1].w
			);
			col2.w = Vec4DotProduct(
				m1.cols[0].w, m1.cols[1].w, m1.cols[2].w, m1.cols[3].w,
				m2.cols[1].x, m2.cols[1].y, m2.cols[1].z, m2.cols[1].w
			);
			//
			col3.x = Vec4DotProduct(
				m1.cols[0].x, m1.cols[1].x, m1.cols[2].x, m1.cols[3].x,
				m2.cols[2].x, m2.cols[2].y, m2.cols[2].z, m2.cols[2].w
			);
			col3.y = Vec4DotProduct(
				m1.cols[0].y, m1.cols[1].y, m1.cols[2].y, m1.cols[3].y,
				m2.cols[2].x, m2.cols[2].y, m2.cols[2].z, m2.cols[2].w
			);
			col3.z = Vec4DotProduct(
				m1.cols[0].z, m1.cols[1].z, m1.cols[2].z, m1.cols[3].z,
				m2.cols[2].x, m2.cols[2].y, m2.cols[2].z, m2.cols[2].w
			);
			col3.w = Vec4DotProduct(
				m1.cols[0].w, m1.cols[1].w, m1.cols[2].w, m1.cols[3].w,
				m2.cols[2].x, m2.cols[2].y, m2.cols[2].z, m2.cols[2].w
			);
			//
			col4.x = Vec4DotProduct(
				m1.cols[0].x, m1.cols[1].x, m1.cols[2].x, m1.cols[3].x,
				m2.cols[3].x, m2.cols[3].y, m2.cols[3].z, m2.cols[3].w
			);
			col4.y = Vec4DotProduct(
				m1.cols[0].y, m1.cols[1].y, m1.cols[2].y, m1.cols[3].y,
				m2.cols[3].x, m2.cols[3].y, m2.cols[3].z, m2.cols[3].w
			);
			col4.z = Vec4DotProduct(
				m1.cols[0].z, m1.cols[1].z, m1.cols[2].z, m1.cols[3].z,
				m2.cols[3].x, m2.cols[3].y, m2.cols[3].z, m2.cols[3].w
			);
			col4.w = Vec4DotProduct(
				m1.cols[0].w, m1.cols[1].w, m1.cols[2].w, m1.cols[3].w,
				m2.cols[3].x, m2.cols[3].y, m2.cols[3].z, m2.cols[3].w
			);

			return Mat4(col1, col2, col3, col4);
		}

		public static Mat4 Mat4Perspective(float fov, float height, float width, float near, float far)
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

		//
		// Quaternions Operation //
		//

		public static Quaternion QuaternionMultiply(Quaternion q1, Quaternion q2)
		{
			float q1x = q1.x, q1y = q1.y, q1z = q1.z, q1w = q1.w;
			float q2x = q2.x, q2y = q2.y, q2z = q2.z, q2w = q2.w;

			float rx = q1x * q2w + q1w * q2x + q1y * q2z - q1z * q2y;
			float ry = q1y * q2w + q1w * q2y + q1z * q2x - q1x * q2z;
			float rz = q1z * q2w + q1w * q2z + q1x * q2y - q1y * q2x;
			float rw = q1w * q2w - q1x * q2x - q1y * q2y - q1z * q2z;

			return Quaternion(rx, ry, rz, rw);
		}

		// Maybe add some kind of error checking
		public static Quaternion QuaternionInvert(Quaternion q)
		{
			float length = Vec4Length(q);
			float lengthSq = length * length;

			if (lengthSq != 0.0f)
			{
				float i = 1.0f / lengthSq;
				return Quaternion(q.x * -i, q.y * -i, q.z * -i, q.w * -i);
			}
			else
			{
				return q;
			}
		}

		// Quaternions conversions
		
	}
}
