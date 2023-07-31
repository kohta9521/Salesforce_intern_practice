public class AccountController {
    public void afterCreate(final String Type) {
        this.getRecord(Type);
    }

    private void getRecord(String Type) {
        AccountModel query = new AccountModel();
        List<Account> accts = query.firstMasterIdType(Type);
    }
}