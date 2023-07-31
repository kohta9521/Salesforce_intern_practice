@isTest
public class AccountTest {
    @isTest
    static void create() {
        Account acc = new Account(Name = 'hoge');

        System.Test.startTest();
        insert acc;
        System.Test.stopTest();

        //List<Log__c> logs = [SELECT Message__c FROM Log__c];
        //System.assertEquals(1, logs.size());
        //System.assertEquals('Hello World', logs[0].Message__c);
    }
}