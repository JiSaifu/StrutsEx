package com.yuwxw.saifu.ji.lib.struts.form;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

public class HelloWorldForm extends ActionForm {

    private static final long serialVersionUID = 1l;

    private String message;
    private boolean discount;
    private String[] shops;
    private Map tel = new HashMap<String, String>();

    /**
     * ActionFormにはプロパティを初期化するためのメソッド
     *
     * Tips：
     * チェックボックスが外された場合、選択されていない状態でパラメータが送信されないため、
     * 一回目ON、二回目OFFで設定する場合、OFFの状態をActionFormに反映できない。
     * resetメソッドはHTTPリクエストからパラメータ値を読み取って設定する前に必ず呼ばれるので、
     * 当メソッドの中で初期化を行うことにより、
     * チェックボックスを使用することにより生じる不具合を防ぐことができる。
     * @param mapping
     * @param request
     */
    public void reset(ActionMapping mapping, HttpServletRequest request) {
        setDiscount(false);
    }

    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();

        if ("".equals(this.getTel("home"))) {
            errors.add("tel_home", new ActionMessage("invalid.tel.home"));
        }

        if ("".equals(this.getTel("mobile"))) {
            errors.add("tel_mobile", new ActionMessage("invalid.tel.mobile"));
        }

        return errors;
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
}
