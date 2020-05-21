using System;

namespace tinyAlgebra
{
	struct Quaterniond : Vector4d
	{
		public this(double x, double y, double z, double w): base(x, y, x, w)
		{

		}

		public this(double value): base(value)
		{

		}

		[Inline]
		public Quaterniond Multiply(Quaterniond q2)
		{
			return tA.QuaternionMultiply(this, q2);
		}

		[Inline]
		public Quaterniond Inverse()
		{
			return tA.QuaternionInvert(this);
		}

		public static Quaterniond Identity()
		{
			return Quaterniond(0.0f, 0.0f, 0.0f, 1.0f);
		}
	}
}
