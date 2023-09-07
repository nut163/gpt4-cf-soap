```coldfusion
component {

    property name="wsdlDataSchema" type="struct";

    public void function init() {
        wsdlDataSchema = {};
    }

    public struct function parseWSDL(required string wsdl) {
        var wsdlXML = xmlParse(arguments.wsdl);
        var wsdlStruct = {};
        var operations = xmlSearch(wsdlXML, "//wsdl:operation");

        for (var operation in operations) {
            var operationName = operation.xmlAttributes.name;
            wsdlStruct[operationName] = {};

            var inputMessage = xmlSearch(operation, "wsdl:input/@message");
            if (arrayLen(inputMessage)) {
                wsdlStruct[operationName].inputMessage = inputMessage[1].xmlText;
            }

            var outputMessage = xmlSearch(operation, "wsdl:output/@message");
            if (arrayLen(outputMessage)) {
                wsdlStruct[operationName].outputMessage = outputMessage[1].xmlText;
            }
        }

        wsdlDataSchema = wsdlStruct;
        return wsdlStruct;
    }

    public struct function getWSDLDataSchema() {
        return duplicate(wsdlDataSchema);
    }

}
```