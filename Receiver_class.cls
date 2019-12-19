public class Receiver_class {

    public String location{get;set;}
   
    public String selectedoption{get;set;}
    public list<donor_reg__c> person{get;set;}
      public List<SelectOption> bloodgroup{
        get
        { 
            bloodgroup = new List<SelectOption>();
            bloodgroup.add(new selectOption('O+','O+'));
            bloodgroup.add(new selectOption('O-','O-'));
            bloodgroup.add(new selectOption('AB+','AB+'));
            bloodgroup.add(new selectOption('AB-','AB-'));
            bloodgroup.add(new selectOption('A+','A+'));
            bloodgroup.add(new selectOption('A-','A-'));
            bloodgroup.add(new selectOption('B+','B+'));
            bloodgroup.add(new selectOption('B-','B-'));
            System.debug('Selected Queue | ' + bloodgroup);
            return bloodgroup;
        }
        set;
    }
    public void Search()
    {
        person=new list<donor_reg__c>();
        system.debug(selectedoption);
        for(donor_reg__c dreg:[select full_name__c,location__c,phone__c,age__c,blood_group__c from donor_reg__c where location__c=:location and blood_group__c=:selectedoption ])
        {
            person.add(dreg);
            system.debug(person);
        }
            
    }
}