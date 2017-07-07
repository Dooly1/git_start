package delivary.mybatis;

public class lengthVO {
	private String lengthcode, l_start, l_start_num, l_end, l_end_num, l_tax;

	public String getLengthcode() {
		return lengthcode;
	}

	public void setLengthcode(String lengthcode) {
		this.lengthcode = lengthcode;
	}

	public String getL_start() {
		return l_start;
	}

	public void setL_start(String l_start) {
		this.l_start = l_start;
	}

	public String getL_start_num() {
		return l_start_num;
	}

	public void setL_start_num(String l_start_num) {
		this.l_start_num = l_start_num;
	}

	public String getL_end() {
		return l_end;
	}

	public void setL_end(String l_end) {
		this.l_end = l_end;
	}

	public String getL_end_num() {
		return l_end_num;
	}

	public void setL_end_num(String l_end_num) {
		this.l_end_num = l_end_num;
	}

	public String getL_tax() {
		return l_tax;
	}

	public void setL_tax(String l_tax) {
		this.l_tax = l_tax;
	}

	@Override
	public String toString() {
		return "lengthVO [lengthcode=" + lengthcode + ", l_start=" + l_start + ", l_start_num=" + l_start_num
				+ ", l_end=" + l_end + ", l_end_num=" + l_end_num + ", l_tax=" + l_tax + "]";
	}
	
}
