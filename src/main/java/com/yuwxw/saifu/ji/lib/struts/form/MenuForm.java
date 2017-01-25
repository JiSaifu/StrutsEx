package com.yuwxw.saifu.ji.lib.struts.form;

import com.yuwxw.saifu.ji.lib.struts.bean.OptionBean;
import org.apache.struts.action.ActionForm;

import java.util.List;

/**
 * Created by jisai on 2017/01/22.
 */
public class MenuForm extends ActionForm {
    private String userid;
    private String selCountry;
    private String selLang;
    private List<OptionBean> langList;

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }


    public String getSelCountry() { return selCountry; }

    public void setSelCountry(String selCountry) {
        this.selCountry = selCountry;
    }


    public String getSelLang() { return selLang; }

    public void setSelLang(String selLang) { this.selLang = selLang; }


    public List<OptionBean> getLangList() { return langList; }

    public void setLangList(List<OptionBean> langList) { this.langList = langList; }
}
