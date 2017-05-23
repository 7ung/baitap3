package com.j2ee.th3.ws;

import com.j2ee.th3.data.Language;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import java.util.List;

/**
 * Created by Stevie on 05/22/2017.
 */
@Path("/rs/language")
public class LanguageWs {

    @GET
    @Produces({"application/json; charset=UTF-8"})
    public Language bank_show(@QueryParam("lang") String lang) {
        if (lang == null || lang.equals("")){
            lang = "en";
        }

        if (!Language.langs.containsKey(lang))
            lang = "en";

        return Language.langs.get(lang);
    }


}
