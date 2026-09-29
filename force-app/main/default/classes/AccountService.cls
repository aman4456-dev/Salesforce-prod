public class AccountService {
    
    public static String getAccountName(Id accountId) {
        Account acc = [
            SELECT Id, Name
            FROM Account
            WHERE Id = :accountId
            LIMIT 1
        ];
        //test commit
        return acc.Name;
    }
}
