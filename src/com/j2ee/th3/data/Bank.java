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
}
