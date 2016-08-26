public with sharing class DemoParamConstrutor {
    
    integer roll;
	String name;

	public  DemoParamConstrutor(integer roll_no,String stud_name)
	{
		roll_no = roll;
		//system.debug(+roll_no);
		stud_name = name;
		//ssystem.debug(+stud_name);
	}

DemoParamConstrutor object1 = new DemoParamConstrutor(10,'disha');

DemoParamConstrutor object2 = new DemoParamConstrutor(20,'abhi');
 	
}