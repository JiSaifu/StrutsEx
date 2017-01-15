package com.yuwxw.saifu.ji.lib.struts.form;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

public class ProjectTestForm extends ActionForm {

    private static final long serialVersionUID = 1l;

    private String message;
    private boolean discount;
    private String[] shops;
    private Map tel = new HashMap<String, String>();
    private String radio;

    public void reset(ActionMapping mapping, HttpServletRequest request) {
        setDiscount(false);
    }

    public boolean isDiscount() { return discount; }
    public void setDiscount(boolean discount) { this.discount = discount; }

    public String getMessage() {
        return message;
    }
    public void setMessage(String message) {
        this.message = message;
    }

    public String[] getShops() { return shops; }
    public void setShops(String[] shops) { this.shops = shops; }

    public void setTel(String key, String value) { tel.put(key, value); }
    public String getTel(String key) { return (String)tel.get(key); }

    public String getRadio() { return radio; }

    public void setRadio(String radio) { this.radio = radio; }
}
