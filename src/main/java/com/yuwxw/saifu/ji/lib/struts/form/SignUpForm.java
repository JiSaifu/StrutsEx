package com.yuwxw.saifu.ji.lib.struts.form;

import com.yuwxw.saifu.ji.lib.struts.bean.CountryBean;
import com.yuwxw.saifu.ji.lib.struts.util.MasterCreator;
import org.apache.commons.lang3.StringUtils;
import org.apache.struts.action.ActionErrors;
// import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
// import org.apache.struts.validator.ValidatorActionForm;
import org.apache.struts.validator.ValidatorForm;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by Ji Saifu on 2017/02/07.
 *
 */
// 12.2 org.apache.struts.validator.ValidatorForm / ValidatorActionForm
// public class SignUpForm extends ActionForm {
// public class SignUpForm extends ValidatorActionForm {
public class SignUpForm extends ValidatorForm {

    private String userId;
    private String password;
    private String confirmPassword;
    private String email;
    private String introduction;
    private String sex = "M";
    private String age;
    private String[] ageArray;
    private String country;
    private boolean rcvInf;
    private String hobbies;

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getPassword() { return password; }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirmPassword() { return confirmPassword; }

    public void setConfirmPassword(String confirmPassword) { this.confirmPassword = confirmPassword; }

    public String getEmail() { return email; }

    public void setEmail(String email) { this.email = email; }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public String getSex() { return sex; }

    public void setSex(String sex) { this.sex = sex; }

    public boolean isRcvInf() { return rcvInf; }

    public void setRcvInf(boolean rcvInf) { this.rcvInf = rcvInf; }

    public String getAge() { return age; }

    public void setAge(String age) { this.age = age; }

    public String[] getAgeArray() { return ageArray; }

    public void setAgeArray(String[] ageArray) { this.ageArray = ageArray; }

    public String getCountry() { return country; }

    public String getHobbies() { return hobbies; }

    public void setHobbies(String hobbies) { this.hobbies = hobbies; }

    /**
     * 国の詳細情報を返す（countryをキーとする）
     * @return 国の詳細情報を格納するBean
     */
    public CountryBean getCountryBean() { return MasterCreator.COUNTRY_INFO.get(country); }

    public void setCountry(String country) { this.country = country; }


    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        // validateメソッドをオーバーライトすると、validation.xmlのチェックが実行されないが
        // super.validateを実行すると、両方とも実行できる
        ActionErrors errors = super.validate(mapping, request);

        if (StringUtils.isBlank(this.getUserId())) {
            errors.add("userId", new ActionMessage("empty.userId"));
        }

        if (StringUtils.isBlank(this.getPassword())) {
            /*
                複数resourceファイルがある場合、<http:message>側で指定する
                messageタグのarg0〜arg4と同様で、
                検索されたメッセージのパラメータを置き換えるためのものです。
            */
            errors.add("password", new ActionMessage("empty.pw"));
        } else if (! this.getPassword().equals(this.getConfirmPassword())) {
            errors.add("cfmPassword", new ActionMessage("invalid.cfmPassword"));
        }
        return errors;
    }

    // 2.5 ActionFormのresetメソッド
    public void reset(ActionMapping mapping, HttpServletRequest request) {
        this.setRcvInf(false);
        this.ageArray = MasterCreator.AGE_ARRAY;
    }
}
