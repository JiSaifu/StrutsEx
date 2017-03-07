package com.yuwxw.saifu.ji.lib.struts.form;

import org.apache.commons.lang3.StringUtils;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.DynaActionForm;

import javax.servlet.http.HttpServletRequest;

/**
 * 11.2 DynaActionFormの継承
 *
 */
public class SignInForm extends DynaActionForm {

    public void initialize(ActionMapping mapping) {
        super.initialize(mapping);
        set("userId", "");
        set("password", "");
    }

    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();

        if (StringUtils.isBlank((String)get("userId"))) {
            errors.add("userId", new ActionMessage("empty.userId"));
            this.reset(mapping, request);
        }

        return errors;
    }

    // 2.5 ActionFormのresetメソッド
    public void reset(ActionMapping mapping, HttpServletRequest request) {
        initialize(mapping);
    }
}
