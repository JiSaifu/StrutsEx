package com.yuwxw.saifu.ji.lib.struts.action;

import com.yuwxw.saifu.ji.lib.struts.util.MasterCreator;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 */
public class HomeAction extends Action{

    public ActionForward execute(ActionMapping mapping, ActionForm form,
                                 HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        session.setAttribute("countryList", MasterCreator.COUNTRY_LIST);
        session.setAttribute("countryInfo", MasterCreator.COUNTRY_INFO);
        return mapping.findForward("success");
    }
}
