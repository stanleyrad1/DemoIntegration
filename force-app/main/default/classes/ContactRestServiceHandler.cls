/**
 * @description A class that handles REST service operations for Contacts.
 */
public inherited sharing class ContactRestServiceHandler {
    private static final String ENDPOINT_URL = 'https://webhook.site/5462b21b-fc8e-4df1-899d-051f7c225855';
    private static final Integer MAX_TIMEOUT_IN_MILLISECONDS = 120000;
    private static final Integer IS_SUCCESS_CODE = 200;
    private static final Integer MAX_REQUEST_BATCH_SIZE = 100;
    private final List<ContactWrapper> contactWrappers;
    private final Boolean isCreateOperation;

}
