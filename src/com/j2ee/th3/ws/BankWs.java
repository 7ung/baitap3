package com.j2ee.th3.ws;

import com.j2ee.th3.data.Bank;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import java.util.Date;
import java.util.HashMap;

/**
 * Created by Stevie on 05/22/2017.
 */
@Path("/rs/bank")
public class BankWs {

    public static HashMap<String, Bank> Data = new HashMap<String, Bank>();
    static {
        Data.put("vi", new Bank("Ngân hàng Sài Gòn Thương Tín", "http://img15.deviantart.net/9fd9/i/2012/052/1/d/rukia_new_look_by_rukiamrss-d4qhibw.png", "dd-MM-yyyy"));
        Data.put("ko", new Bank("사이공 투옹 틴 상업 은행", "http://02e1b73.netsolhost.com/homes/hitsugaya-toushiro-new-look-33.jpg", "dd MMMM yyyy"));
        Data.put("en", new Bank("Sai Gon Commercial Bank", "https://lh6.googleusercontent.com/-EhDfx-ES2Aw/TX1mPniK9kI/AAAAAAAAAaQ/spkirbryfxw/s1600/Z2.bmp", "dd MMMM yyyy"));

    }

    @GET
    @Produces({"application/json; charset=UTF-8"})
    public Bank bank_show(@QueryParam("lang") String lang) {
        if (lang == null || lang.equals("")){
            lang = "en";
        }

        if (!Data.containsKey(lang))
            lang = "en";

        Bank bank = BankWs.Data.get(lang);
        bank.setDateByNumber(new Date());

        return bank;
    }
}
