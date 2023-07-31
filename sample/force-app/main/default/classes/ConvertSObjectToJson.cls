public class ConvertSObjectToJson {
    public static String convertContactsToJson(List<Contact> contacts) {
        List<Map<String, Object>> contactDataList = new List<Map<String, Object>>();
        for (Contact contact : contacts) {
            Map<String, Object> contactData = new Map<String, Object>();
            contactData.put('Id', contact.Id);
            contactData.put('Name', contact.Name);
            contactData.put('Field3__c', contact.Field3__c);
            // etc ...

            contactDataList.add(contactData);
        }
        return JSON.serialize(contactDataList);
    }
}