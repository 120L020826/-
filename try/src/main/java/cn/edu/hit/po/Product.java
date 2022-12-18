package cn.edu.hit.po;

import java.util.Date;
import java.util.Objects;


public class Product {
    private Integer pId;
    private String pName;
    private Double marketPrice;
    private Double shopPrice;
    private String image;
    private String pDesc;
    private Integer isHot;
    private Date pDate;
    private Integer csId;
    private String marketOwner;


    public Integer getpId() {
        return pId;
    }

    public void setpId(Integer pId) {
        this.pId = pId;
    }

    public String getpName() {
        return pName;
    }

    public void setpName(String pName) {
        this.pName = pName;
    }

    public Double getMarketPrice() {
        return marketPrice;
    }

    public void setMarketPrice(Double marketPrice) {
        this.marketPrice = marketPrice;
    }

    public Double getShopPrice() {
        return shopPrice;
    }

    public void setShopPrice(Double shopPrice) {
        this.shopPrice = shopPrice;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getpDesc() {
        return pDesc;
    }

    public void setpDesc(String pDesc) {
        this.pDesc = pDesc;
    }

    public Integer getIsHot() {
        return isHot;
    }

    public void setIsHot(Integer isHot) {
        this.isHot = isHot;
    }

    public Date getpDate() {
        return pDate;
    }

    public void setpDate(Date pDate) {
        this.pDate = pDate;
    }

    public Integer getCsId() {
        return csId;
    }

    public void setCsId(Integer csId) {
        this.csId = csId;
    }

    public String getMarketOwner() {
        return marketOwner;
    }

    public void setMarketOwner(String marketOwner) {
        this.marketOwner = marketOwner;
    }

    @Override
    public String toString() {
        return "Product{" +
                "pId=" + pId +
                ", pName='" + pName + '\'' +
                ", marketPrice=" + marketPrice +
                ", shopPrice=" + shopPrice +
                ", image='" + image + '\'' +
                ", pDesc='" + pDesc + '\'' +
                ", isHot=" + isHot +
                ", pDate=" + pDate +
                ", csId=" + csId +
                ", marketOwner=" + marketOwner +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Product product = (Product) o;
        return pId.equals(product.pId) && pName.equals(product.pName) && csId.equals(product.csId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(pId);
    }

}