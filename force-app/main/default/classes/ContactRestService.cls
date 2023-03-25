@RestResource(UrlMapping='/external_contacts/*')
global without sharing class ContactRestService {
    private static final Integer STATUS_CODE_SERVER_ERROR = 500;
    private static final Integer STATUS_CODE_BAD_REQUEST_ERROR = 400;
    private static final Integer STATUS_CODE_NOT_FOUND_ERROR = 404;
    private static final RestRequest request = RestContext.request;
    private static final RestResponse response = RestContext.response;
    private static final String URL_MAPPING = '/external_contacts/';

    static {
        response.addHeader('Content-Type', 'application/json');
    }

    @HttpGet
    global static void handleGet() {
    }

    @HttpPost
    global static void handlePost() {
    }

    @HttpPut
    global static void handlePut() {
    }

    @HttpDelete
    global static void handleDelete() {

    }

    public class RestServiceException extends Exception {
    }

}
