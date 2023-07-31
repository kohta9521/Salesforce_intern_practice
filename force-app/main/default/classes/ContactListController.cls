public with sharing class ContactListController {
  @AuraEnabled(cacheable=true)
  public static List<Contact> getContactsByAccountId(Id accountId) {
    //取引先に関連する取引先責任者を取得する
    return [
      SELECT Id, Name, Department, Title, Phone, Email
      FROM Contact
      WHERE AccountId = :accountId
      ORDER BY CreatedDate
    ];
  }
}