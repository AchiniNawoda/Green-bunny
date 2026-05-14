package upload;

import java.io.IOException;
import java.io.InputStream;

import org.apache.tomcat.jakartaee.commons.compress.utils.IOUtils;
import org.apache.tomcat.util.codec.binary.Base64;

public class Product {
	private int id;
	private String email;
	private String productName;
	private double price;
	private int quantity;
	private String address;
	private String mobileNumber;
	private String photoName;
	private InputStream photoData;
	
	

	public Product(int id, String email, String productName, double price, int quantity, String address,
			String mobileNumber, String photoName, InputStream photoData) {
		super();
		this.id = id;
		this.email = email;
		this.productName = productName;
		this.price = price;
		this.quantity = quantity;
		this.address = address;
		this.mobileNumber = mobileNumber;
		this.photoName = photoName;
		this.photoData = photoData;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public String getPhotoName() {
		return photoName;
	}

	public void setPhotoName(String photoName) {
		this.photoName = photoName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public InputStream getPhotoData() {
		return photoData;
	}

	public void setPhotoData(InputStream photoData) {
		this.photoData = photoData;
	}

	public String getBase64Image() throws IOException {
		byte[] imageBytes = IOUtils.toByteArray(this.photoData);
		return Base64.encodeBase64String(imageBytes);
	}
}