// 法人OD
public class AccountModel {
	public List<Account> firstMasterIdType(String Type) {
        List<Account> accts = [
                SELECT Id
            	FROM Account
                WHERE Type = :Type
                ORDER BY Id DESC LIMIT 1
            ];
        return accts;
    }
}