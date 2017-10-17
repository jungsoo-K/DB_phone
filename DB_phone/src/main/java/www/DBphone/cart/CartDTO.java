package www.DBphone.cart;

import org.springframework.web.multipart.MultipartFile;

public class CartDTO {
	
	private int cartnum;
	private String quantity;
	private String totalprice;
	private String id;
	private String pcode;
	private String ccolor;
	private String totalquantity;
	private String devtype;
	private String casetype;
	private String pimage  ; //
	private MultipartFile filenameMF ;
	
	
	
	public String getPimage() {
		return pimage;
	}
	public void setPimage(String pimage) {
		this.pimage = pimage;
	}
	public MultipartFile getFilenameMF() {
		return filenameMF;
	}
	public void setFilenameMF(MultipartFile filenameMF) {
		this.filenameMF = filenameMF;
	}
	public int getCartnum() {
		return cartnum;
	}
	public void setCartnum(int cartnum) {
		this.cartnum = cartnum;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	public String getTotalprice() {
		return totalprice;
	}
	public void setTotalprice(String totalprice) {
		this.totalprice = totalprice;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPcode() {
		return pcode;
	}
	public void setPcode(String pcode) {
		this.pcode = pcode;
	}
	public String getCcolor() {
		return ccolor;
	}
	public void setCcolor(String ccolor) {
		this.ccolor = ccolor;
	}
	public String getTotalquantity() {
		return totalquantity;
	}
	public void setTotalquantity(String totalquantity) {
		this.totalquantity = totalquantity;
	}
	public String getDevtype() {
		return devtype;
	}
	public void setDevtype(String devtype) {
		this.devtype = devtype;
	}
	public String getCasetype() {
		return casetype;
	}
	public void setCasetype(String casetype) {
		this.casetype = casetype;
	}
	
}