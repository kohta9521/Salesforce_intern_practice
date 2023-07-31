public class ContactController {
  public void duplicate(String Phone, Id NewId) {
    ContactModel query = new ContactModel();
    List<Contact> con = query.pulldDuplicateList(Phone, NewId);

    if (!con.isEmpty()) {
      String dup_str = '【重複】';
      for (Contact contact : con) {
        if (contact.LastName.indexOf(dup_str) == -1) {
          contact.LastName = dup_str + contact.LastName;
        }
        contact.new_register__c = NewId;
        contact.IsLocked__c = true;
      }
    }

    try {
      update con;
    } catch(DmlException e) {
      System.debug(e.getMessage());
    }
  }

  public void getNewRecordsUseFirstName(String FirstName) {
    ContactModel query = new ContactModel();
    List<Contact> accts = query.firstMasterIdFirstName(FirstName);
  }

  public void sendCreateSerialNumberApi(String FirstName) {
    ExternalApiCallout.sendContactDataToExternalAPI(FirstName);
  }
    
 public static void addSerialNumber(Contact con, String jsonData) {
    Map<String, Object> dataMap	 = (Map<String, Object>)JSON.deserializeUntyped(jsonData);
    String SerialNumber = (String)dataMap.get('message');
    con.put('toosibangou__c', SerialNumber);
    update con;
    System.debug('afterUpdateContact:'+con);
  }
}