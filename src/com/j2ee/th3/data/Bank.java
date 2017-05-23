package com.j2ee.th3.data;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by Stevie on 05/22/2017.
 */
public class Bank {

    private SimpleDateFormat dateFormat;
    public Bank(){}
    public Bank(String n, String img, String dfmt){
        this.setName(n);
        this.setUrlImage(img);
        if (dfmt.equals(""))
            dateFormat = new SimpleDateFormat();
        else
            dateFormat = new SimpleDateFormat(dfmt);
    }

    private String name;
    private String urlImage;
    private String date;
    private String rate;
    private String profit;
    private String month;
    private String currency;
    private String sale;
    private String buy;
    private String period;

    public Bank(String name, String urlImage,
                String date, String rate,
                String profit,
                String month,
                String currency,
                String sale,
                String buy,
                String period) {
        this.name = name;
        this.urlImage = urlImage;
        if (date.equals(""))
            dateFormat = new SimpleDateFormat();
        else
            dateFormat = new SimpleDateFormat(date);
        this.rate = rate;
        this.profit = profit;
        this.month = month;
        this.currency = currency;
        this.sale = sale;
        this.buy = buy;
        this.setPeriod(period);
    }

    public void setDateFormat(SimpleDateFormat dateFormat) {
        this.dateFormat = dateFormat;
    }

    public void setRate(String rate) {
        this.rate = rate;
    }

    public void setProfit(String profit) {
        this.profit = profit;
    }

    public void setMonth(String month) {
        this.month = month;
    }

    public void setCurrency(String currency) {
        this.currency = currency;
    }

    public void setSale(String sale) {
        this.sale = sale;
    }

    public void setBuy(String buy) {
        this.buy = buy;
    }

    public SimpleDateFormat getDateFormat() {

        return dateFormat;
    }

    public String getRate() {
        return rate;
    }

    public String getProfit() {
        return profit;
    }

    public String getMonth() {
        return month;
    }

    public String getCurrency() {
        return currency;
    }

    public String getSale() {
        return sale;
    }

    public String getBuy() {
        return buy;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUrlImage() {
        return urlImage;
    }

    public void setUrlImage(String urlImage) {
        this.urlImage = urlImage;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date){
        this.date = date;
    }

    public void setDateByNumber(Date date) {
        if (dateFormat != null && !dateFormat.equals(""))
            this.date = this.dateFormat.format(date);
        else
            date.toString();
    }

    public String getPeriod() {
        return period;
    }

    public void setPeriod(String period) {
        this.period = period;
    }
}