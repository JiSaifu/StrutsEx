package com.yuwxw.saifu.ji.lib.struts.action;

import com.yuwxw.saifu.ji.lib.struts.bean.SampleBean;
import com.yuwxw.saifu.ji.lib.struts.form.HelloWorldForm;
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
public class HelloWorldAction extends Action{

    public ActionForward execute(ActionMapping mapping, ActionForm form,
                                 HttpServletRequest request, HttpServletResponse response) {
        HelloWorldForm hwForm = (HelloWorldForm)form;

        hwForm.setMessage("Hello World! Struts");

        System.out.println("For checkbox test : discount is " + hwForm.isDiscount());

        String[] shops = hwForm.getShops();
        if (null != shops) {
            StringBuffer shopsStrBuf;
            shopsStrBuf= new StringBuffer();

            for(String shop : shops) {
                shopsStrBuf.append(shop).append("; ");
            }

            System.out.println("For select test : shops is " + shopsStrBuf.toString());
        }

        System.out.println("For map test : home's tel is " + hwForm.getTel("home"));
        System.out.println("For map test : mobile's tel is " + hwForm.getTel("mobile"));

        // Bean library test
        SampleBean splBean = new SampleBean();
        splBean.setArrays(new int[]{1,2,3,4,5});
        splBean.setDoubleNum(3.14);
        splBean.setDate(new Date());
        Map map = new HashMap<String, String>();
        map.put("key1", "value1");
        map.put("key2", "value2");
        splBean.setMap(map);

        request.setAttribute("bean1", splBean);

        return mapping.findForward("success");
    }
}
