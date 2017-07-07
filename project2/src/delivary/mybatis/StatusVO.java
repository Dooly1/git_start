package delivary.mybatis;

//택배 현황
public class StatusVO {
	private String hub_code, hub_name, hub_location;
	private String status_code, status_current;
	private String odx, idx, u_id, oname, ozip, oaddr, oaddr2, ophone;
	private String oname_2, ozip_2, oaddr_2, oaddr2_2, ophone_2, odate, odate2, oactive, lengthcode;
	private String product_code,	product_name;
	private String list_code, list_saleprice, list_count, odx_1;
	public String getOdx_1() {
		return odx_1;
	}
	public void setOdx_1(String odx_1) {
		this.odx_1 = odx_1;
	}
	public String getOzip_2() {
		return ozip_2;
	}
	public void setOzip_2(String ozip_2) {
		this.ozip_2 = ozip_2;
	}
	public String getProduct_code() {
		return product_code;
	}
	public void setProduct_code(String product_code) {
		this.product_code = product_code;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getList_code() {
		return list_code;
	}
	public void setList_code(String list_code) {
		this.list_code = list_code;
	}
	public String getList_saleprice() {
		return list_saleprice;
	}
	public void setList_saleprice(String list_saleprice) {
		this.list_saleprice = list_saleprice;
	}
	public String getList_count() {
		return list_count;
	}
	public void setList_count(String list_count) {
		this.list_count = list_count;
	}
	public String getHub_code() {
		return hub_code;
	}
	public void setHub_code(String hub_code) {
		this.hub_code = hub_code;
	}
	public String getHub_name() {
		return hub_name;
	}
	public void setHub_name(String hub_name) {
		this.hub_name = hub_name;
	}
	public String getHub_location() {
		return hub_location;
	}
	public void setHub_location(String hub_location) {
		this.hub_location = hub_location;
	}
	public String getStatus_code() {
		return status_code;
	}
	public void setStatus_code(String status_code) {
		this.status_code = status_code;
	}
	public String getStatus_current() {
		return status_current;
	}
	public void setStatus_current(String status_current) {
		this.status_current = status_current;
	}
	public String getOdx() {
		return odx;
	}
	public void setOdx(String odx) {
		this.odx = odx;
	}
	public String getIdx() {
		return idx;
	}
	public void setIdx(String idx) {
		this.idx = idx;
	}

	public String getOname() {
		return oname;
	}
	public void setOname(String oname) {
		this.oname = oname;
	}
	public String getOzip() {
		return ozip;
	}
	public void setOzip(String ozip) {
		this.ozip = ozip;
	}
	public String getOaddr() {
		return oaddr;
	}
	public void setOaddr(String oaddr) {
		this.oaddr = oaddr;
	}
	public String getOaddr2() {
		return oaddr2;
	}
	public void setOaddr2(String oaddr2) {
		this.oaddr2 = oaddr2;
	}
	public String getOphone() {
		return ophone;
	}
	public void setOphone(String ophone) {
		this.ophone = ophone;
	}
	public String getOname_2() {
		return oname_2;
	}
	public void setOname_2(String oname_2) {
		this.oname_2 = oname_2;
	}
	public String getOzip2() {
		return ozip_2;
	}
	public void setOzip2(String ozip_2) {
		this.ozip_2 = ozip_2;
	}
	public String getOaddr_2() {
		return oaddr_2;
	}
	public void setOaddr_2(String oaddr_2) {
		this.oaddr_2 = oaddr_2;
	}
	public String getOaddr2_2() {
		return oaddr2_2;
	}
	public void setOaddr2_2(String oaddr2_2) {
		this.oaddr2_2 = oaddr2_2;
	}
	public String getOphone_2() {
		return ophone_2;
	}
	public void setOphone_2(String ophone_2) {
		this.ophone_2 = ophone_2;
	}
	public String getOdate() {
		return odate;
	}
	public void setOdate(String odate) {
		this.odate = odate;
	}
	public String getOdate2() {
		return odate2;
	}
	public void setOdate2(String odate2) {
		this.odate2 = odate2;
	}
	public String getOactive() {
		return oactive;
	}
	public void setOactive(String oactive) {
		this.oactive = oactive;
	}	
	public String getLengthcode() {
		return lengthcode;
	}
	public void setLengthcode(String lengthcode) {
		this.lengthcode = lengthcode;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	@Override
	public String toString() {
		return "StatusVO [hub_code=" + hub_code + ", hub_name=" + hub_name + ", hub_location=" + hub_location
				+ ", status_code=" + status_code + ", status_current=" + status_current + ", odx=" + odx + ", idx="
				+ idx + ", u_id=" + u_id + ", oname=" + oname + ", ozip=" + ozip + ", oaddr=" + oaddr + ", oaddr2="
				+ oaddr2 + ", ophone=" + ophone + ", oname_2=" + oname_2 + ", ozip_2=" + ozip_2 + ", oaddr_2=" + oaddr_2
				+ ", oaddr2_2=" + oaddr2_2 + ", ophone_2=" + ophone_2 + ", odate=" + odate + ", odate2=" + odate2
				+ ", oactive=" + oactive + ", lengthcode=" + lengthcode + ", product_code=" + product_code
				+ ", product_name=" + product_name + ", list_code=" + list_code + ", list_saleprice=" + list_saleprice
				+ ", list_count=" + list_count + ", odx_1=" + odx_1 + "]";
	}

}
