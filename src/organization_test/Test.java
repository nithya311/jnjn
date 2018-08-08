package organization_test;

public class Test {

	int test_id;
	int domain_id;
	String test_name;
	int[] question_id;
	
	public Test(int test_id, int domain_id, String test_name, int[] question_id) {
		super();
		this.test_id = test_id;
		this.domain_id = domain_id;
		this.test_name = test_name;
		this.question_id = question_id;
	}	
}