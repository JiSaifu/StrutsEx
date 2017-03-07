package com.yuwxw.saifu.ji.lib.struts.action;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.DynaActionForm;
import org.apache.struts.actions.DispatchAction;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import java.util.logging.Logger;

/**
 *
 */
public class SignInAction extends DispatchAction {
// public class SignUpAction extends Action {

    // static Logger log = Logger.getLogger(String.valueOf(SignUpAction.class));

    public ActionForward unspecified(ActionMapping mapping, ActionForm form,
                                  HttpServletRequest request, HttpServletResponse response) {
        if (isCancelled(request)) {
            System.out.println("In CANCEL");
        } else {

        }

        return mapping.findForward("init");
    }

    public ActionForward certificate(ActionMapping mapping, ActionForm form,
                                 HttpServletRequest request, HttpServletResponse response) {

        DynaActionForm dynaForm = (DynaActionForm)form;
        System.out.println(dynaForm.get("userId"));
        System.out.println(dynaForm.get("password"));

        return mapping.findForward("pass");
    }

    public ActionForward back(ActionMapping mapping, ActionForm form,
                                 HttpServletRequest request, HttpServletResponse response) {
        if (isCancelled(request)) {
            System.out.println("In CANCEL");
        } else {

        }

        return mapping.findForward("back");
    }
}
