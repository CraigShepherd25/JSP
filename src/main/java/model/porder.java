package model;

public class porder {
	private Integer id;
	private String name;
	private Integer product1;
	private Integer product2;
	private Integer product3;
	private Integer sum;
	public porder() {
		super();
		// TODO Auto-generated constructor stub
	}
	public porder(String name, Integer product1, Integer product2, Integer product3) {
		super();
		this.name = name;
		this.product1 = product1;
		this.product2 = product2;
		this.product3 = product3;
		
		sum=product1*1000+product2*1500+product3*2000;
		//也放在下面getSum()每次計算
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getProduct1() {
		return product1;
	}
	public void setProduct1(Integer product1) {
		this.product1 = product1;
	}
	public Integer getProduct2() {
		return product2;
	}
	public void setProduct2(Integer product2) {
		this.product2 = product2;
	}
	public Integer getProduct3() {
		return product3;
	}
	public void setProduct3(Integer product3) {
		this.product3 = product3;
	}
	public Integer getSum() {
		
		//每次計算
		sum=product1*1000+product2*1500+product3*2000;
		return sum;
	}
	public void setSum(Integer sum) {
		this.sum = sum;
	}
	
	

}