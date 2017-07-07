package delivary.mybatis;

public class DiaryVO {
	private String v_idx, v_name, v_subject, v_content, v_pwd, v_regdate;

	public String getV_idx() {
		return v_idx;
	}

	public void setV_idx(String v_idx) {
		this.v_idx = v_idx;
	}

	public String getV_name() {
		return v_name;
	}

	public void setV_name(String v_name) {
		this.v_name = v_name;
	}

	public String getV_subject() {
		return v_subject;
	}

	public void setV_subject(String v_subject) {
		this.v_subject = v_subject;
	}

	public String getV_content() {
		return v_content;
	}

	public void setV_content(String v_content) {
		this.v_content = v_content;
	}

	public String getV_pwd() {
		return v_pwd;
	}

	public void setV_pwd(String v_pwd) {
		this.v_pwd = v_pwd;
	}

	public String getV_regdate() {
		return v_regdate;
	}

	public void setV_regdate(String v_regdate) {
		this.v_regdate = v_regdate;
	}

	@Override
	public String toString() {
		return "DiaryVO [v_idx=" + v_idx + ", v_name=" + v_name + ", v_subject=" + v_subject + ", v_content="
				+ v_content + ", v_pwd=" + v_pwd + ", v_regdate=" + v_regdate + "]";
	}

}
