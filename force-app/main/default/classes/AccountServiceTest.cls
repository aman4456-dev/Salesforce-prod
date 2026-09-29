@IsTest
private class AccountServiceTest {
    //test commit
    @IsTest
    static void testGetAccountName() {
        
        Account acc = new Account(
            Name = 'Test Account'
        );
        insert acc;
        
        Test.startTest();
        
        String accountName = AccountService.getAccountName(acc.Id);
        
        Test.stopTest();
    }
}