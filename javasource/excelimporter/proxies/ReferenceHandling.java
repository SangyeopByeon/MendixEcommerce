// This file was generated by Mendix Studio Pro.
//
// WARNING: Code you write here will be lost the next time you deploy the project.

package excelimporter.proxies;

/**
 * References
 * For each reference that is used in the mapping, you can configure what should happen if a referenced object is not found. Just like in the modeler the value of a reference(set) can be added to the current values of be overwritten. 
 * Print message when reference is not found
 * Keep track of all the object keys in this association that could not be found. Warning: This consumes a lot of memory since all values need to be remembered.
 * Commit unchanged objects
 * Even if there aren't any changes to the object still commit the objects in order to execute the events. 
 * 
 */
public class ReferenceHandling
{
	private final com.mendix.systemwideinterfaces.core.IMendixObject referenceHandlingMendixObject;

	private final com.mendix.systemwideinterfaces.core.IContext context;

	/**
	 * Internal name of this entity
	 */
	public static final java.lang.String entityName = "ExcelImporter.ReferenceHandling";

	/**
	 * Enum describing members of this entity
	 */
	public enum MemberNames
	{
		Handling("Handling"),
		DataHandling("DataHandling"),
		PrintNotFoundMessages("PrintNotFoundMessages"),
		CommitUnchangedObjects("CommitUnchangedObjects"),
		IgnoreEmptyKeys("IgnoreEmptyKeys"),
		ReferenceHandling_Template("ExcelImporter.ReferenceHandling_Template"),
		ReferenceHandling_MxObjectReference("ExcelImporter.ReferenceHandling_MxObjectReference");

		private final java.lang.String metaName;

		MemberNames(java.lang.String s)
		{
			metaName = s;
		}

		@java.lang.Override
		public java.lang.String toString()
		{
			return metaName;
		}
	}

	public ReferenceHandling(com.mendix.systemwideinterfaces.core.IContext context)
	{
		this(context, com.mendix.core.Core.instantiate(context, entityName));
	}

	protected ReferenceHandling(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject referenceHandlingMendixObject)
	{
		if (referenceHandlingMendixObject == null) {
			throw new java.lang.IllegalArgumentException("The given object cannot be null.");
		}
		if (!com.mendix.core.Core.isSubClassOf(entityName, referenceHandlingMendixObject.getType())) {
			throw new java.lang.IllegalArgumentException(String.format("The given object is not a %s", entityName));
		}	

		this.referenceHandlingMendixObject = referenceHandlingMendixObject;
		this.context = context;
	}

	/**
	 * @deprecated Use 'ReferenceHandling.load(IContext, IMendixIdentifier)' instead.
	 */
	@java.lang.Deprecated
	public static excelimporter.proxies.ReferenceHandling initialize(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixIdentifier mendixIdentifier) throws com.mendix.core.CoreException
	{
		return excelimporter.proxies.ReferenceHandling.load(context, mendixIdentifier);
	}

	/**
	 * Initialize a proxy using context (recommended). This context will be used for security checking when the get- and set-methods without context parameters are called.
	 * The get- and set-methods with context parameter should be used when for instance sudo access is necessary (IContext.createSudoClone() can be used to obtain sudo access).
	 * @param context The context to be used
	 * @param mendixObject The Mendix object for the new instance
	 * @return a new instance of this proxy class
	 */
	public static excelimporter.proxies.ReferenceHandling initialize(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject mendixObject)
	{
		return new excelimporter.proxies.ReferenceHandling(context, mendixObject);
	}

	public static excelimporter.proxies.ReferenceHandling load(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixIdentifier mendixIdentifier) throws com.mendix.core.CoreException
	{
		com.mendix.systemwideinterfaces.core.IMendixObject mendixObject = com.mendix.core.Core.retrieveId(context, mendixIdentifier);
		return excelimporter.proxies.ReferenceHandling.initialize(context, mendixObject);
	}

	public static java.util.List<excelimporter.proxies.ReferenceHandling> load(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String xpathConstraint) throws com.mendix.core.CoreException
	{
		return com.mendix.core.Core.createXPathQuery(String.format("//%1$s%2$s", entityName, xpathConstraint))
			.execute(context)
			.stream()
			.map(obj -> excelimporter.proxies.ReferenceHandling.initialize(context, obj))
			.collect(java.util.stream.Collectors.toList());
	}

	/**
	 * Commit the changes made on this proxy object.
	 * @throws com.mendix.core.CoreException
	 */
	public final void commit() throws com.mendix.core.CoreException
	{
		com.mendix.core.Core.commit(context, getMendixObject());
	}

	/**
	 * Commit the changes made on this proxy object using the specified context.
	 * @throws com.mendix.core.CoreException
	 */
	public final void commit(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		com.mendix.core.Core.commit(context, getMendixObject());
	}

	/**
	 * Delete the object.
	 */
	public final void delete()
	{
		com.mendix.core.Core.delete(context, getMendixObject());
	}

	/**
	 * Delete the object using the specified context.
	 */
	public final void delete(com.mendix.systemwideinterfaces.core.IContext context)
	{
		com.mendix.core.Core.delete(context, getMendixObject());
	}
	/**
	 * Set value of Handling
	 * @param handling
	 */
	public final excelimporter.proxies.ReferenceHandlingEnum getHandling()
	{
		return getHandling(getContext());
	}

	/**
	 * @param context
	 * @return value of Handling
	 */
	public final excelimporter.proxies.ReferenceHandlingEnum getHandling(com.mendix.systemwideinterfaces.core.IContext context)
	{
		Object obj = getMendixObject().getValue(context, MemberNames.Handling.toString());
		if (obj == null) {
			return null;
		}
		return excelimporter.proxies.ReferenceHandlingEnum.valueOf((java.lang.String) obj);
	}

	/**
	 * Set value of Handling
	 * @param handling
	 */
	public final void setHandling(excelimporter.proxies.ReferenceHandlingEnum handling)
	{
		setHandling(getContext(), handling);
	}

	/**
	 * Set value of Handling
	 * @param context
	 * @param handling
	 */
	public final void setHandling(com.mendix.systemwideinterfaces.core.IContext context, excelimporter.proxies.ReferenceHandlingEnum handling)
	{
		if (handling != null) {
			getMendixObject().setValue(context, MemberNames.Handling.toString(), handling.toString());
		} else {
			getMendixObject().setValue(context, MemberNames.Handling.toString(), null);
		}
	}

	/**
	 * Set value of DataHandling
	 * @param datahandling
	 */
	public final excelimporter.proxies.ReferenceDataHandling getDataHandling()
	{
		return getDataHandling(getContext());
	}

	/**
	 * @param context
	 * @return value of DataHandling
	 */
	public final excelimporter.proxies.ReferenceDataHandling getDataHandling(com.mendix.systemwideinterfaces.core.IContext context)
	{
		Object obj = getMendixObject().getValue(context, MemberNames.DataHandling.toString());
		if (obj == null) {
			return null;
		}
		return excelimporter.proxies.ReferenceDataHandling.valueOf((java.lang.String) obj);
	}

	/**
	 * Set value of DataHandling
	 * @param datahandling
	 */
	public final void setDataHandling(excelimporter.proxies.ReferenceDataHandling datahandling)
	{
		setDataHandling(getContext(), datahandling);
	}

	/**
	 * Set value of DataHandling
	 * @param context
	 * @param datahandling
	 */
	public final void setDataHandling(com.mendix.systemwideinterfaces.core.IContext context, excelimporter.proxies.ReferenceDataHandling datahandling)
	{
		if (datahandling != null) {
			getMendixObject().setValue(context, MemberNames.DataHandling.toString(), datahandling.toString());
		} else {
			getMendixObject().setValue(context, MemberNames.DataHandling.toString(), null);
		}
	}

	/**
	 * @return value of PrintNotFoundMessages
	 */
	public final java.lang.Boolean getPrintNotFoundMessages()
	{
		return getPrintNotFoundMessages(getContext());
	}

	/**
	 * @param context
	 * @return value of PrintNotFoundMessages
	 */
	public final java.lang.Boolean getPrintNotFoundMessages(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.Boolean) getMendixObject().getValue(context, MemberNames.PrintNotFoundMessages.toString());
	}

	/**
	 * Set value of PrintNotFoundMessages
	 * @param printnotfoundmessages
	 */
	public final void setPrintNotFoundMessages(java.lang.Boolean printnotfoundmessages)
	{
		setPrintNotFoundMessages(getContext(), printnotfoundmessages);
	}

	/**
	 * Set value of PrintNotFoundMessages
	 * @param context
	 * @param printnotfoundmessages
	 */
	public final void setPrintNotFoundMessages(com.mendix.systemwideinterfaces.core.IContext context, java.lang.Boolean printnotfoundmessages)
	{
		getMendixObject().setValue(context, MemberNames.PrintNotFoundMessages.toString(), printnotfoundmessages);
	}

	/**
	 * @return value of CommitUnchangedObjects
	 */
	public final java.lang.Boolean getCommitUnchangedObjects()
	{
		return getCommitUnchangedObjects(getContext());
	}

	/**
	 * @param context
	 * @return value of CommitUnchangedObjects
	 */
	public final java.lang.Boolean getCommitUnchangedObjects(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.Boolean) getMendixObject().getValue(context, MemberNames.CommitUnchangedObjects.toString());
	}

	/**
	 * Set value of CommitUnchangedObjects
	 * @param commitunchangedobjects
	 */
	public final void setCommitUnchangedObjects(java.lang.Boolean commitunchangedobjects)
	{
		setCommitUnchangedObjects(getContext(), commitunchangedobjects);
	}

	/**
	 * Set value of CommitUnchangedObjects
	 * @param context
	 * @param commitunchangedobjects
	 */
	public final void setCommitUnchangedObjects(com.mendix.systemwideinterfaces.core.IContext context, java.lang.Boolean commitunchangedobjects)
	{
		getMendixObject().setValue(context, MemberNames.CommitUnchangedObjects.toString(), commitunchangedobjects);
	}

	/**
	 * @return value of IgnoreEmptyKeys
	 */
	public final java.lang.Boolean getIgnoreEmptyKeys()
	{
		return getIgnoreEmptyKeys(getContext());
	}

	/**
	 * @param context
	 * @return value of IgnoreEmptyKeys
	 */
	public final java.lang.Boolean getIgnoreEmptyKeys(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.Boolean) getMendixObject().getValue(context, MemberNames.IgnoreEmptyKeys.toString());
	}

	/**
	 * Set value of IgnoreEmptyKeys
	 * @param ignoreemptykeys
	 */
	public final void setIgnoreEmptyKeys(java.lang.Boolean ignoreemptykeys)
	{
		setIgnoreEmptyKeys(getContext(), ignoreemptykeys);
	}

	/**
	 * Set value of IgnoreEmptyKeys
	 * @param context
	 * @param ignoreemptykeys
	 */
	public final void setIgnoreEmptyKeys(com.mendix.systemwideinterfaces.core.IContext context, java.lang.Boolean ignoreemptykeys)
	{
		getMendixObject().setValue(context, MemberNames.IgnoreEmptyKeys.toString(), ignoreemptykeys);
	}

	/**
	 * @throws com.mendix.core.CoreException
	 * @return value of ReferenceHandling_Template
	 */
	public final excelimporter.proxies.Template getReferenceHandling_Template() throws com.mendix.core.CoreException
	{
		return getReferenceHandling_Template(getContext());
	}

	/**
	 * @param context
	 * @return value of ReferenceHandling_Template
	 * @throws com.mendix.core.CoreException
	 */
	public final excelimporter.proxies.Template getReferenceHandling_Template(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		excelimporter.proxies.Template result = null;
		com.mendix.systemwideinterfaces.core.IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.ReferenceHandling_Template.toString());
		if (identifier != null) {
			result = excelimporter.proxies.Template.load(context, identifier);
		}
		return result;
	}

	/**
	 * Set value of ReferenceHandling_Template
	 * @param referencehandling_template
	 */
	public final void setReferenceHandling_Template(excelimporter.proxies.Template referencehandling_template)
	{
		setReferenceHandling_Template(getContext(), referencehandling_template);
	}

	/**
	 * Set value of ReferenceHandling_Template
	 * @param context
	 * @param referencehandling_template
	 */
	public final void setReferenceHandling_Template(com.mendix.systemwideinterfaces.core.IContext context, excelimporter.proxies.Template referencehandling_template)
	{
		if (referencehandling_template == null) {
			getMendixObject().setValue(context, MemberNames.ReferenceHandling_Template.toString(), null);
		} else {
			getMendixObject().setValue(context, MemberNames.ReferenceHandling_Template.toString(), referencehandling_template.getMendixObject().getId());
		}
	}

	/**
	 * @throws com.mendix.core.CoreException
	 * @return value of ReferenceHandling_MxObjectReference
	 */
	public final mxmodelreflection.proxies.MxObjectReference getReferenceHandling_MxObjectReference() throws com.mendix.core.CoreException
	{
		return getReferenceHandling_MxObjectReference(getContext());
	}

	/**
	 * @param context
	 * @return value of ReferenceHandling_MxObjectReference
	 * @throws com.mendix.core.CoreException
	 */
	public final mxmodelreflection.proxies.MxObjectReference getReferenceHandling_MxObjectReference(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		mxmodelreflection.proxies.MxObjectReference result = null;
		com.mendix.systemwideinterfaces.core.IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.ReferenceHandling_MxObjectReference.toString());
		if (identifier != null) {
			result = mxmodelreflection.proxies.MxObjectReference.load(context, identifier);
		}
		return result;
	}

	/**
	 * Set value of ReferenceHandling_MxObjectReference
	 * @param referencehandling_mxobjectreference
	 */
	public final void setReferenceHandling_MxObjectReference(mxmodelreflection.proxies.MxObjectReference referencehandling_mxobjectreference)
	{
		setReferenceHandling_MxObjectReference(getContext(), referencehandling_mxobjectreference);
	}

	/**
	 * Set value of ReferenceHandling_MxObjectReference
	 * @param context
	 * @param referencehandling_mxobjectreference
	 */
	public final void setReferenceHandling_MxObjectReference(com.mendix.systemwideinterfaces.core.IContext context, mxmodelreflection.proxies.MxObjectReference referencehandling_mxobjectreference)
	{
		if (referencehandling_mxobjectreference == null) {
			getMendixObject().setValue(context, MemberNames.ReferenceHandling_MxObjectReference.toString(), null);
		} else {
			getMendixObject().setValue(context, MemberNames.ReferenceHandling_MxObjectReference.toString(), referencehandling_mxobjectreference.getMendixObject().getId());
		}
	}

	/**
	 * @return the IMendixObject instance of this proxy for use in the Core interface.
	 */
	public final com.mendix.systemwideinterfaces.core.IMendixObject getMendixObject()
	{
		return referenceHandlingMendixObject;
	}

	/**
	 * @return the IContext instance of this proxy, or null if no IContext instance was specified at initialization.
	 */
	public final com.mendix.systemwideinterfaces.core.IContext getContext()
	{
		return context;
	}

	@java.lang.Override
	public boolean equals(Object obj)
	{
		if (obj == this) {
			return true;
		}
		if (obj != null && getClass().equals(obj.getClass()))
		{
			final excelimporter.proxies.ReferenceHandling that = (excelimporter.proxies.ReferenceHandling) obj;
			return getMendixObject().equals(that.getMendixObject());
		}
		return false;
	}

	@java.lang.Override
	public int hashCode()
	{
		return getMendixObject().hashCode();
	}

	/**
	 * @return String name of this class
	 */
	public static java.lang.String getType()
	{
		return entityName;
	}

	/**
	 * @return String GUID from this object, format: ID_0000000000
	 * @deprecated Use getMendixObject().getId().toLong() to get a unique identifier for this object.
	 */
	@java.lang.Deprecated
	public java.lang.String getGUID()
	{
		return "ID_" + getMendixObject().getId().toLong();
	}
}
