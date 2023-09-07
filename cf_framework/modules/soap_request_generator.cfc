```coldfusion
component {

    property name="wsdlParser" inject="wsdl_parser";
    property name="soapRequest" inject="soap_request";
    property name="xmlSigner" inject="xml_signer";

    function init() {
        return this;
    }

    public any function generateSOAPRequest(required struct soapRequestDataSchema) {
        var soapRequest = soapRequest.init();
        soapRequest.setSOAPRequestDataSchema(arguments.soapRequestDataSchema);
        return soapRequest.generate();
    }

    public any function parseWSDL(required string wsdl) {
        var wsdlDataSchema = wsdlParser.parse(arguments.wsdl);
        return wsdlDataSchema;
    }

    public any function signSOAPRequest(required string soapRequest, required string privateKey) {
        var signedSOAPRequest = xmlSigner.sign(soapRequest, privateKey);
        return signedSOAPRequest;
    }

    public any function generateAndSignSOAPRequest(required struct soapRequestDataSchema, required string privateKey) {
        var soapRequest = generateSOAPRequest(arguments.soapRequestDataSchema);
        var signedSOAPRequest = signSOAPRequest(soapRequest, arguments.privateKey);
        return signedSOAPRequest;
    }
}
```