package com.exam.order.model;
// Generated Apr 24, 2019 4:40:17 PM by Hibernate Tools 4.3.1.Final

import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Product generated by hbm2java
 */
@Entity
@Table(name = "product", catalog = "onetech")
public class Product implements java.io.Serializable {

	private Integer id;
	private MenuCategory menucategory;
	private String productName;
	private String productcale;
	private String productVendor;
	private String productDescription;
	private short quantityInStock;
	private BigDecimal buyPrice;
	private BigDecimal tax;
	private BigDecimal msrp;
	private byte[] image;
	private String urlImage;
	private short rate;
//	private Set<OrderDetail> orderdetails = new HashSet<OrderDetail>(0);
	private Set<User> users = new HashSet<User>(0);

	public Product() {
	}

	public Product(MenuCategory menucategory, String productName, String productcale, String productVendor,
			String productDescription, short quantityInStock, BigDecimal buyPrice, BigDecimal tax, BigDecimal msrp,
			short rate) {
		this.menucategory = menucategory;
		this.productName = productName;
		this.productcale = productcale;
		this.productVendor = productVendor;
		this.productDescription = productDescription;
		this.quantityInStock = quantityInStock;
		this.buyPrice = buyPrice;
		this.tax = tax;
		this.msrp = msrp;
		this.rate = rate;
	}

	public Product(MenuCategory menucategory, String productName, String productcale, String productVendor,
			String productDescription, short quantityInStock, BigDecimal buyPrice, BigDecimal tax, BigDecimal msrp,
			byte[] image, String urlImage, short rate
//			, Set<OrderDetail> orderdetails
			, Set<User> users) {
		this.menucategory = menucategory;
		this.productName = productName;
		this.productcale = productcale;
		this.productVendor = productVendor;
		this.productDescription = productDescription;
		this.quantityInStock = quantityInStock;
		this.buyPrice = buyPrice;
		this.tax = tax;
		this.msrp = msrp;
		this.image = image;
		this.urlImage = urlImage;
		this.rate = rate;
//		this.orderdetails = orderdetails;
		this.users = users;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "menuCategoryId", nullable = false)
	public MenuCategory getMenucategory() {
		return this.menucategory;
	}

	public void setMenucategory(MenuCategory menucategory) {
		this.menucategory = menucategory;
	}

	@Column(name = "productName", nullable = false, length = 70)
	public String getProductName() {
		return this.productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	@Column(name = "productcale", nullable = false, length = 10)
	public String getProductcale() {
		return this.productcale;
	}

	public void setProductcale(String productcale) {
		this.productcale = productcale;
	}

	@Column(name = "productVendor", nullable = false, length = 50)
	public String getProductVendor() {
		return this.productVendor;
	}

	public void setProductVendor(String productVendor) {
		this.productVendor = productVendor;
	}

	@Column(name = "productDescription", nullable = false, length = 65535)
	public String getProductDescription() {
		return this.productDescription;
	}

	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}

	@Column(name = "quantityInStock", nullable = false)
	public short getQuantityInStock() {
		return this.quantityInStock;
	}

	public void setQuantityInStock(short quantityInStock) {
		this.quantityInStock = quantityInStock;
	}

	@Column(name = "buyPrice", nullable = false, precision = 10)
	public BigDecimal getBuyPrice() {
		return this.buyPrice;
	}

	public void setBuyPrice(BigDecimal buyPrice) {
		this.buyPrice = buyPrice;
	}

	@Column(name = "tax", nullable = false, precision = 10)
	public BigDecimal getTax() {
		return this.tax;
	}

	public void setTax(BigDecimal tax) {
		this.tax = tax;
	}

	@Column(name = "MSRP", nullable = false, precision = 10)
	public BigDecimal getMsrp() {
		return this.msrp;
	}

	public void setMsrp(BigDecimal msrp) {
		this.msrp = msrp;
	}

	@Column(name = "image")
	public byte[] getImage() {
		return this.image;
	}

	public void setImage(byte[] image) {
		this.image = image;
	}

	@Column(name = "urlImage")
	public String getUrlImage() {
		return this.urlImage;
	}

	public void setUrlImage(String urlImage) {
		this.urlImage = urlImage;
	}

	@Column(name = "rate", nullable = false)
	public short getRate() {
		return this.rate;
	}

	public void setRate(short rate) {
		this.rate = rate;
	}
//
//	@OneToMany(fetch = FetchType.LAZY, mappedBy = "product")
//	public Set<OrderDetail> getOrderdetails() {
//		return this.orderdetails;
//	}
//
//	public void setOrderdetails(Set<OrderDetail> orderdetails) {
//		this.orderdetails = orderdetails;
//	}

	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(name = "viewed", catalog = "onetech", joinColumns = {
			@JoinColumn(name = "product_id", nullable = false, updatable = false) }, inverseJoinColumns = {
					@JoinColumn(name = "user_id", nullable = false, updatable = false) })
	public Set<User> getUsers() {
		return this.users;
	}

	public void setUsers(Set<User> users) {
		this.users = users;
	}

	@Override
	public String toString() {
		return "Sản phẩm [Mã hàng=" + id + ", tên mặt hàng=" + productName + ", còn lại=" + quantityInStock
				+ ", giá=" + buyPrice + ", giảm giá=" + msrp.intValue()*100 + "%]";
	}

}
