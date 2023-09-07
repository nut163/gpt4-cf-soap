<cfcomponent>

    <cfproperty name="wsdlDataSchema" type="struct">

    <cffunction name="init" access="public" returntype="wsdl" output="false">
        <cfargument name="wsdlDataSchema" type="struct" required="true">
        <cfset variables.wsdlDataSchema = arguments.wsdlDataSchema>
        <cfreturn this>
    </cffunction>

    <cffunction name="parseWSDL" access="public" returntype="void" output="false">
        <cfargument name="wsdl" type="string" required="true">
        <cfset variables.wsdlDataSchema = createObject("component", "cf_framework.modules.wsdl_parser").parseWSDL(arguments.wsdl)>
    </cffunction>

    <cffunction name="getWSDLDataSchema" access="public" returntype="struct" output="false">
        <cfreturn variables.wsdlDataSchema>
    </cffunction>

    <cffunction name="setWSDLDataSchema" access="public" returntype="void" output="false">
        <cfargument name="wsdlDataSchema" type="struct" required="true">
        <cfset variables.wsdlDataSchema = arguments.wsdlDataSchema>
    </cffunction>

</cfcomponent>