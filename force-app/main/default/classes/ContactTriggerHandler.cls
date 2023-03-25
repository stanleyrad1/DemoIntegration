public inherited sharing class ContactTriggerHandler extends TriggerHandler {

    public override void afterInsert(Map<Id, SObject> newMap) {
    }

    public override void afterUpdate(Map<Id, SObject> newMap, Map<Id, SObject> oldMap) {
        Map<Id, Contact> contactsToSyncMap = new Map<Id, Contact>();
        for (Contact contact : (List<Contact>)newMap.values()) {
            Contact oldContact = (Contact) oldMap.get(contact.Id);
            if (contact.FirstName != oldContact.FirstName ||
                contact.LastName != oldContact.LastName ||
                contact.Email != oldContact.Email ||
                contact.Birthdate != oldContact.Birthdate ||
                contact.Phone != oldContact.Phone ||
                contact.HasOptedOutOfEmail != oldContact.HasOptedOutOfEmail) {
                contactsToSyncMap.put(contact.Id, contact);
            }
        }

        if (!contactsToSyncMap.isEmpty()) {
            //Sync Update with External Service
        }
    }

    private static void syncWithExternalService(Set<Id> contactIds) {
    }
}
