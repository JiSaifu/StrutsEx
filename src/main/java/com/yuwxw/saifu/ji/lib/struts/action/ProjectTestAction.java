package com.yuwxw.saifu.ji.lib.struts.action;

import com.yuwxw.saifu.ji.lib.struts.bean.ProjectTestBean;
import com.yuwxw.saifu.ji.lib.struts.form.ProjectTestForm;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Map;
import java.util.TreeMap;

/**
 * Created by jisai on 2017/01/13.
 */
public class ProjectTestAction extends Action {
    public ActionForward execute(ActionMapping mapping, ActionForm form,
                                HttpServletRequest request, HttpServletResponse response) {
        String confParam = mapping.getParameter();
        String forwardTarget = "";

        ProjectTestForm ptf = (ProjectTestForm)form;
        HttpSession session = request.getSession();

        if ("f1".equals(confParam)) {
            Map<String, ProjectTestBean> treeMap = new TreeMap<String, ProjectTestBean>();

            ProjectTestBean ptb1 = new ProjectTestBean();
            ptb1.setCol1("ptb1-1");
            ptb1.setCol2("ptb1-2");

            ProjectTestBean ptb2 = new ProjectTestBean();
            ptb2.setCol1("ptb2-1");
            ptb2.setCol2("ptb2-2");

            ProjectTestBean ptb3 = new ProjectTestBean();
            ptb3.setCol1("ptb3-1");
            ptb3.setCol2("ptb3-2");

            ProjectTestBean ptb4 = new ProjectTestBean();
            ptb4.setCol1("ptb4-1");
            ptb4.setCol2("ptb4-2");

            treeMap.put("ptb2", ptb2);
            treeMap.put("ptb1", ptb1);
            treeMap.put("ptb4", ptb4);
            treeMap.put("ptb3", ptb3);

            ptf.setMessage("hello");

            request.getSession().setAttribute("ptbTree", treeMap);
            request.getSession().setAttribute("compareBean", ptb4);

            forwardTarget = "f1";

        } else if ("f2".equals(confParam)) {
            Map<String, ProjectTestBean> map = (Map<String, ProjectTestBean>)session.getAttribute("ptbTree");
            if (null != map) {
                System.out.println(map.get("ptb1").getCol1());
            }
            session.removeAttribute("ptbTree");
        }

        return mapping.findForward(forwardTarget);
    }
}
