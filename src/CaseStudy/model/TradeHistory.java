package CaseStudy.model;

import java.util.ArrayList;
import java.util.List;

public class TradeHistory {
    private int order_id;
    private String cusFirstName;
    private String cusLastName;
    private String createDate;
    private int duration;
    private String staffNickName;

    private List<TradeHistory> historyList;

    public TradeHistory() {
    }

    public TradeHistory(int order_id, String cusFirstName, String cusLastName, String createDate, int duration, String staffNickName) {
        this.order_id = order_id;
        this.cusFirstName = cusFirstName;
        this.cusLastName = cusLastName;
        this.createDate = createDate;
        this.duration = duration;
        this.staffNickName = staffNickName;
    }

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public String getCusFirstName() {
        return cusFirstName;
    }

    public void setCusFirstName(String cusFirstName) {
        this.cusFirstName = cusFirstName;
    }

    public String getCusLastName() {
        return cusLastName;
    }

    public void setCusLastName(String cusLastName) {
        this.cusLastName = cusLastName;
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    public String getStaffNickName() {
        return staffNickName;
    }

    public void setStaffNickName(String staffNickName) {
        this.staffNickName = staffNickName;
    }
    public List<TradeHistory> getHistoryList() {
        return historyList;
    }

    public void setHistoryList(List<TradeHistory> historyList) {
        this.historyList = historyList;
    }
}
