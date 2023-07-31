@isTest
public class ContactTest {
   public class MockHttpResponse implements HttpCalloutMock {
       public HTTPResponse respond(HTTPRequest req) {
           System.assertEquals('', req.getEndpoint());
           System.assertEquals('POST', req.getMethod());
           HttpResponse res = new HttpResponse();
           res.setHeader('Contrent-Type', 'application/json');
           res.setStatusCode(200);
           res.setBody('{"number": "sh-100000"}');
           return res;
       }
   }
   @isTest
   static void testSendDataToExternalAPI() {
       Contact testContact = new Contact(FirstName = 'hoge', LastName = 'HOGE', Field3__c = '保育士');
       Test.startTest();
       insert testContact;
       Test.setMock(HttpCalloutMock.class, new MockHttpResponse());
       Test.stopTest();
  }
  
  // test2
  // @isTest(SeeAllData=True)
  // static void create() {
    // Contact con = new Contact(FirstName = 'hoge', LastName = 'HOGE', Field3__c = '保育士', Email  = 'sonoda@simples.co.jp');

    // System.Test.startTest();
    // insert con;
    // System.Test.stopTest();

    //List<Log__c> logs = [SELECT Message__c FROM Log__c];
    //System.assertEquals(1, logs.size());
    //System.assertEquals('Hello World', logs[0].Message__c);
  // }
}