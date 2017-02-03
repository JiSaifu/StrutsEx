package com.yuwxw.saifu.ji.lib.struts.form;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by jisai on 2017/01/18.
 */
public class LoginForm extends ActionForm {

    private static final long serialVersionUID = 1l;

    private String userid;
    private String password;
    private String comment;
    private String userType;
    private String secret;
    private boolean agreeBln;
    private String agreeStr;
    private String[] hobbies;

    {
        System.out.println(this.getClass().getName() + "Start");
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType;
    }

    public String getSecret() { return secret; }

    public void setSecret(String secret) {
        this.secret = secret;
    }

    public boolean isAgreeBln() { return agreeBln; }

    public void setAgreeBln(boolean agreeBln) { this.agreeBln = agreeBln; }

    public String getAgreeStr() { return agreeStr; }

    public void setAgreeStr(String agreeStr) { this.agreeStr = agreeStr; }

    public String[] getHobbies() { return hobbies; }

    public void setHobbies(String[] hobbies) { this.hobbies = hobbies; }

    {
        System.out.println(this.getClass().getName() + "End");
    }

    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();

        if ("".equals(this.getUserid())) {
            errors.add("userid", new ActionMessage("empty.userid"));
        }
        return errors;
    }
}
