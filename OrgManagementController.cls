global without sharing class OrgManagementController{
    @AuraEnabled(cacheable=true)
    public static List<Org__c> getOrgList() {
        return [
            SELECT Id,Name,domain__c
            FROM Org__c
        ];
    }
}