package com.j2ee.th3.data;

import org.apache.commons.codec.language.bm.Lang;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

/**
 * Created by Stevie on 05/22/2017.
 */
public class Language {

    public static HashMap<String, Language> langs = new HashMap<>();
    static {
        langs.put("en",
                new Language(){
                    {
                        setHome("Home");
                        setAboutUs("About us");
                        setProductAndServices("Products & Services");
                    }
                }
        );
        langs.put("vi",
                new Language(){
                    {
                        setHome("Trang chủ");
                        setAboutUs("Giới thiệu");
                        setProductAndServices("Sản phẩm và dịch vụ");
                    }
                }
        );
        langs.put("ko",
            new Language(){
                {
                    setHome("홈페이지");
                    setAboutUs("회사 소개");
                    setProductAndServices("제품 및 서비스");
                }
            }
        );
    }

    public Language(){}

    private String home;
    private String aboutUs;
    private String productAndServices;


    public String getHome() {
        return home;
    }

    public void setHome(String home) {
        this.home = home;
    }

    public String getAboutUs() {
        return aboutUs;
    }

    public void setAboutUs(String aboutUs) {
        this.aboutUs = aboutUs;
    }

    public String getProductAndServices() {
        return productAndServices;
    }

    public void setProductAndServices(String productAndServices) {
        this.productAndServices = productAndServices;
    }
}
