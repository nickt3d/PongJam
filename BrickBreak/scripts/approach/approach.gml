/// Approach(a, b, amount)
///@args startPos
///@args endPos
///@args amount
function approach(argument0, argument1, argument2) {

	if (argument0 < argument1)
	{
	    argument0 += argument2;
	    if (argument0 > argument1)
	        return argument1;
	}
	else
	{
	    argument0 -= argument2;
	    if (argument0 < argument1)
	        return argument1;
	}
	return argument0;


}
