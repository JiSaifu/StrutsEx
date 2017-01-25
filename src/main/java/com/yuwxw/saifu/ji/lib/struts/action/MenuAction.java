package com.yuwxw.saifu.ji.lib.struts.action;

import com.yuwxw.saifu.ji.lib.struts.bean.MenuBean;
import com.yuwxw.saifu.ji.lib.struts.bean.OptionBean;
import com.yuwxw.saifu.ji.lib.struts.form.MenuForm;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by jisai on 2017/01/22.
 *
 */
public class MenuAction extends Action {

    public ActionForward execute(ActionMapping mapping, ActionForm form,
                                 HttpServletRequest request, HttpServletResponse response) {
        MenuForm menuForm = (MenuForm)form;
        String fwd = "";
        if ("init".equals(mapping.getParameter())) {
            HttpSession session = request.getSession();
            String userid = (String)session.getAttribute("userid");
            System.out.println(userid);

            System.out.println("Locale: " + session.getAttribute("org.apache.struts.action.LOCALE"));

            MenuBean mBean = new MenuBean();

            // Optionsタグの実現方法１：BeanにCollectionを格納する
            List<String> countryLabel = new ArrayList<String>();
            countryLabel.add("Japan");
            countryLabel.add("China");
            countryLabel.add("America");
            mBean.setCountryLabel(countryLabel);

            List<String> country = new ArrayList<String>();
            country.add("JA");
            country.add("CN");
            country.add("US");
            mBean.setCountry(country);

            // Optionsタグの実現方法２：CollectionにBeanを格納する
            List<OptionBean> countryList = new ArrayList<OptionBean>();
            countryList.add(new OptionBean("UK","England"));
            countryList.add(new OptionBean("FR","France"));

            // OptionsCollectionタグの実現方法：CollectionにBeanを格納する
            List<OptionBean> langList = new ArrayList<OptionBean>();
            langList.add(new OptionBean("zh","中国語"));
            langList.add(new OptionBean("en","English"));
            menuForm.setLangList(langList);

            Map<String, String> linkParam = new HashMap<String, String>();
            linkParam.put("a1", "b1");
            linkParam.put("a2", "b2");
            request.setAttribute("linkParam", linkParam);

            request.setAttribute("countryBean", mBean);
            request.setAttribute("countryList", countryList);

            fwd = "menu";
        }
        return mapping.findForward(fwd);
    }
}
