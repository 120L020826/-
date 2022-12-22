package cn.edu.hit.po;

import com.alibaba.fastjson.annotation.JSONField;

import java.util.List;

public class PostExt{
    @JSONField(ordinal = 0)
    public Post order;
    @JSONField(ordinal = 4)
    private String signature;

    public PostExt() {
    }

    public PostExt(Post order, String signature) {
        this.order = order;
        this.signature = signature;
    }

    public Post getOrder() {
        return order;
    }

    public void setOrder(Post order) {
        this.order = order;
    }

    public String getSignature() {
        return signature;
    }

    public void setSignature(String signature) {
        this.signature = signature;
    }

}
