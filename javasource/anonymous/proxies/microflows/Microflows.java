// This file was generated by Mendix Studio Pro.
//
// WARNING: Code you write here will be lost the next time you deploy the project.

package anonymous.proxies.microflows;

import java.util.HashMap;
import java.util.Map;
import com.mendix.core.Core;
import com.mendix.systemwideinterfaces.core.IContext;
import com.mendix.systemwideinterfaces.core.IMendixObject;

public class Microflows
{
	/**
	 * @deprecated
	 * The default constructor of the Microflows class should not be used.
	 * Use the static microflow invocation methods instead.
	 */
	@java.lang.Deprecated(since = "9.12", forRemoval = true)
	public Microflows() {}

	// These are the microflows for the Anonymous module
	public static void aCT_MultiplyWithJava(IContext context, anonymous.proxies.Multiply _multiply)
	{
		Map<java.lang.String, Object> params = new HashMap<>();
		params.put("Multiply", _multiply == null ? null : _multiply.getMendixObject());
		Core.microflowCall("Anonymous.ACT_MultiplyWithJava").withParams(params).execute(context);
	}
	public static void aCT_RegisterUser(IContext context, anonymous.proxies.Anonymous _anonymous)
	{
		Map<java.lang.String, Object> params = new HashMap<>();
		params.put("Anonymous", _anonymous == null ? null : _anonymous.getMendixObject());
		Core.microflowCall("Anonymous.ACT_RegisterUser").withParams(params).execute(context);
	}
	public static anonymous.proxies.Multiply dS_Multiply(IContext context)
	{
		Map<java.lang.String, Object> params = new HashMap<>();
		IMendixObject result = (IMendixObject)Core.microflowCall("Anonymous.DS_Multiply").withParams(params).execute(context);
		return result == null ? null : anonymous.proxies.Multiply.initialize(context, result);
	}
}
