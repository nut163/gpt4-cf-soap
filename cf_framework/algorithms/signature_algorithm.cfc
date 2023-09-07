```coldfusion
component {

    property name="xmlSigner" type="cf_framework.modules.xml_signer";
    property name="xmlSignature" type="cf_framework.components.xml_signature";

    public string function signXML(required string xml, required string privateKey) {
        var signature = xmlSignature.init();
        signature.setPrivateKey(privateKey);
        signature.setXML(xml);
        xmlSigner.sign(signature);
        return signature.getSignedXML();
    }

    public boolean function verifyXML(required string signedXML, required string publicKey) {
        var signature = xmlSignature.init();
        signature.setPublicKey(publicKey);
        signature.setSignedXML(signedXML);
        return xmlSigner.verify(signature);
    }

}
```