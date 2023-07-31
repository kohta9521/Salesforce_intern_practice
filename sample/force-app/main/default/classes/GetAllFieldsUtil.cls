public class GetAllFieldsUtil {
    public String getAllCustomFields(String objName) {
        String customQuery = '';
        String delimiter = '';

        Schema.SObjectType objType = Schema.getGlobalDescribe().get(objName);
        Map<String, sObjectField> fieldsMap = objType.getDescribe().fields.getMap();

        for (String fieldName : fieldsMap.keySet()) {
            if (fieldName.endsWith('__c')) {
                customQuery += delimiter + fieldName;
                delimiter = ', ';
            }
        }

        return customQuery;
    }
}