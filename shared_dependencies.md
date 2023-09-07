1. SOAP Request Data Schema: This is the data structure that will be used to generate SOAP requests. It will be shared across "soap_request_generator.cfc", "soap_request.cfc", and "wsdl_parser.cfc".

2. WSDL Data Schema: This is the data structure that will be used to parse and store the WSDL. It will be shared across "wsdl_parser.cfc" and "wsdl.cfc".

3. XML Signature Data Schema: This is the data structure that will be used to sign XML requests. It will be shared across "xml_signer.cfc" and "xml_signature.cfc".

4. Signature Algorithm Function: This function will be used to sign XML requests. It will be shared across "xml_signer.cfc", "xml_signature.cfc", and "signature_algorithm.cfc".

5. Generate SOAP Request Function: This function will be used to generate SOAP requests. It will be shared across "soap_request_generator.cfc" and "soap_request.cfc".

6. Parse WSDL Function: This function will be used to parse the WSDL. It will be shared across "wsdl_parser.cfc" and "wsdl.cfc".

7. DOM Element IDs: These will be used by JavaScript functions to manipulate the DOM. They will be shared across all files.

8. Message Names: These will be used to communicate between different parts of the framework. They will be shared across all files.