public class ExternalApiCallout {
    @future(callout=true)
    public static void sendContactDataToExternalAPI(String FirstName) {
        ContactModel query = new ContactModel();
        List<Contact> con = query.firstMasterIdFirstName(FirstName);
        String jsonData = ConvertSObjectToJson.convertContactsToJson(con);
        String apiEndpoint = ''; 

        HttpRequest request = new HttpRequest();
        request.setEndpoint(apiEndpoint);
        request.setMethod('POST');
        request.setHeader('Content-Type', 'application/json');
        request.setBody(jsonData);

        HttpResponse response = new Http().send(request);

        // Integer statusCode = response.getStatusCode();
        String responseBody = response.getBody();
        // String resJson = JSON.serialize(responseBody);
        ContactController.addSerialNumber(con[0], responseBody);
    }
}