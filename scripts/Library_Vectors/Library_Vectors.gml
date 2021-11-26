function Vector2(_x = 0, _y = 0) constructor
{
	X = _x;
	Y = _y;
	
	function length()
	{
		return sqrt(X * X + Y * Y);
	}
	
	function normalized()
	{
		var length = self.length();
		if (length != 0)
		{
			var _x = self.X / length;
			var _y = self.Y / length;
			return new Vector2(_x, _y);
		}
		else
			return new Vector2();
	}
}

function vector_sum(vector_1, vector_2)
{
	var _x = vector_1.X + vector_2.X;
	var _y = vector_1.Y + vector_2.Y;
	
	return new Vector2(_x, _y);
}

function vector_sub(vector_1, vector_2)
{
	var _x = vector_1.X - vector_2.X;
	var _y = vector_1.Y - vector_2.Y;
	
	return new Vector2(_x, _y);
}

function vector_mult(vector, multiplicator)
{
	var _x = vector.X * multiplicator
	var _y = vector.Y * multiplicator
	
	return new Vector2(_x, _y);
}

function vector_div(vector, divisor)
{
	var _x = vector.X / divisor
	var _y = vector.Y / divisor
	
	return new Vector2(_x, _y);
}
