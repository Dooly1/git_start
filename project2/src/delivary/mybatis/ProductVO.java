package delivary.mybatis;

public class ProductVO {
	private String product_code, product_name, product_price, product_area, product_company;
	private String odx, list_code, list_saleprice, list_count;

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

	public String getProduct_price() {
		return product_price;
	}

	public void setProduct_price(String product_price) {
		this.product_price = product_price;
	}

	public String getProduct_area() {
		return product_area;
	}

	public void setProduct_area(String product_area) {
		this.product_area = product_area;
	}

	public String getProduct_company() {
		return product_company;
	}

	public void setProduct_company(String product_company) {
		this.product_company = product_company;
	}

	public String getOdx() {
		return odx;
	}

	public void setOdx(String odx) {
		this.odx = odx;
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

	@Override
	public String toString() {
		return "ProductVO [product_code=" + product_code + ", product_name=" + product_name + ", product_price="
				+ product_price + ", product_area=" + product_area + ", product_company=" + product_company + ", odx="
				+ odx + ", list_code=" + list_code + ", list_saleprice=" + list_saleprice + ", list_count=" + list_count
				+ "]";
	}
}
