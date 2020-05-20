using System;

namespace tinyAlgebra
{
	struct Quaternion : Vector4
	{
		public this(float x, float y, float z, float w): base(x, y, x, w)
		{

		}

		public this(float value): base(value)
		{

		}

		[Inline]
		public Quaternion Multiply(Quaternion q2)
		{
			return tA.QuaternionMultiply(this, q2);
		}

		[Inline]
		public Quaternion Inverse()
		{
			return tA.QuaternionInvert(this);
		}

		public static Quaternion Identity()
		{
			return Quaternion(0.0f, 0.0f, 0.0f, 1.0f);
		}
	}
}
