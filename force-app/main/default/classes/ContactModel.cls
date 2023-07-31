public class ContactModel {
    public List<Contact> firstMasterIdFirstName(String FirstName) {
        List<Contact> con = [SELECT id, Name, toosibangou__c, toosibangou_kyuu__c, Field3__c FROM Contact WHERE FirstName = :FirstName];
        return con;
    }

    public List<Contact> pulldDuplicateList(String Phone, Id NewId) {
      List<Contact> con = [
        SELECT Id, LastName 
        FROM Contact
        WHERE Phone = :Phone
        AND Id != :NewId
      ];

      return con;
    }
}