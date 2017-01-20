package com.yuwxw.saifu.ji.lib.struts.action;

import com.yuwxw.saifu.ji.lib.struts.bean.SampleBean;
import com.yuwxw.saifu.ji.lib.struts.form.HelloWorldForm;
import com.yuwxw.saifu.ji.lib.struts.form.LoginForm;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 *
 */
public class LoginAction extends Action{

    public ActionForward execute(ActionMapping mapping, ActionForm form,
                                 HttpServletRequest request, HttpServletResponse response) {
        LoginForm loginForm = (LoginForm)form;

        System.out.println(loginForm.getUserid());
        System.out.println(loginForm.getPassword());
        System.out.println(loginForm.getComment());
        System.out.println(loginForm.getUserType());
        System.out.println(loginForm.getSecret());
        System.out.println(loginForm.isAgreeBln());
        System.out.println(loginForm.getAgreeStr());

        String[] hobbies = loginForm.getHobbies();
        if (hobbies == null) {
            System.out.println("Hobbies is null.");
        } else {

            for (String hobby : hobbies) {
                System.out.println(hobby);
            }
        }

        return mapping.findForward("#");
    }
}
