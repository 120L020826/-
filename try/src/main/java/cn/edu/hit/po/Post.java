package cn.edu.hit.po;

import com.alibaba.fastjson.annotation.JSONField;

public class Post {

    @JSONField(ordinal = 1)
    private String from_id;
    @JSONField(ordinal = 2)
    private String to_id;
    @JSONField(ordinal = 3)
    private String amount;
    @JSONField(ordinal = 4)
    private String comment;

    public Post(String from_id, String to_id, String amount, String comment) {
        this.from_id = from_id;
        this.to_id = to_id;
        this.amount = amount;
        this.comment = comment;
    }

    public String getFrom_id() {
        return from_id;
    }

    public void setFrom_id(String from_id) {
        this.from_id = from_id;
    }

    public String getTo_id() {
        return to_id;
    }

    public void setTo_id(String to_id) {
        this.to_id = to_id;
    }

    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    @Override
    public String toString() {
        return "Post{" +
                "from_id='" + from_id + '\'' +
                ", to_id='" + to_id + '\'' +
                ", amount='" + amount + '\'' +
                ", comment='" + comment + '\'' +
                '}';
    }
}
