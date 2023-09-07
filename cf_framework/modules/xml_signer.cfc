<cfcomponent>

    <cffunction name="init" access="public" returntype="xml_signer" output="false">
        <cfargument name="SignatureAlgorithmFunction" type="any" required="true">
        <cfset variables.SignatureAlgorithmFunction = arguments.SignatureAlgorithmFunction>
        <cfreturn this>
    </cffunction>

    <cffunction name="signXML" access="public" returntype="xml" output="false">
        <cfargument name="XMLSignatureDataSchema" type="struct" required="true">
        <cfargument name="DOMElementIDs" type="array" required="true">
        <cfargument name="MessageNames" type="array" required="true">
        
        <cfset var signedXML = "">
        <cfset var xmlToSign = arguments.XMLSignatureDataSchema.xmlToSign>
        
        <cftry>
            <cfset signedXML = variables.SignatureAlgorithmFunction.sign(xmlToSign)>
            <cfcatch>
                <cfthrow message="Error signing XML" detail="#cfcatch.detail#">
            </cfcatch>
        </cftry>
        
        <cfreturn signedXML>
    </cffunction>

</cfcomponent>