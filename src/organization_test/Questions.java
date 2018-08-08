package organization_test;

public class Questions {
	
	int question_id;
	int domain_id;
	String question;
	String option_a;
	String option_b;
	String option_c;
	String option_d;
	String correct_ans;	
	
	public Questions(int question_id, int domain_id, String question,
			String option_a, String option_b, String option_c, String option_d,
			String correct_ans) {
		super();
		this.question_id = question_id;
		this.domain_id = domain_id;
		this.question = question;
		this.option_a = option_a;
		this.option_b = option_b;
		this.option_c = option_c;
		this.option_d = option_d;
		this.correct_ans = correct_ans;
	}
	

}
