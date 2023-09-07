```coldfusion
component {

    property name="soapRequestDataSchema";
    property name="generateSoapRequestFunction";

    public any function init(required any soapRequestDataSchema, required any generateSoapRequestFunction) {
        variables.soapRequestDataSchema = arguments.soapRequestDataSchema;
        variables.generateSoapRequestFunction = arguments.generateSoapRequestFunction;
        return this;
    }

    public string function generateSoapRequest(required struct soapRequestData) {
        return variables.generateSoapRequestFunction(variables.soapRequestDataSchema, arguments.soapRequestData);
    }

    public struct function getSoapRequestDataSchema() {
        return variables.soapRequestDataSchema;
    }

    public void function setSoapRequestDataSchema(required struct soapRequestDataSchema) {
        variables.soapRequestDataSchema = arguments.soapRequestDataSchema;
    }

    public any function getGenerateSoapRequestFunction() {
        return variables.generateSoapRequestFunction;
    }

    public void function setGenerateSoapRequestFunction(required any generateSoapRequestFunction) {
        variables.generateSoapRequestFunction = arguments.generateSoapRequestFunction;
    }

}
```