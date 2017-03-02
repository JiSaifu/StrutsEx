package com.yuwxw.saifu.ji.lib.struts.util;

import com.yuwxw.saifu.ji.lib.struts.bean.CountryBean;
import com.yuwxw.saifu.ji.lib.struts.bean.OptionBean;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by jisai on 2017/02/23.
 */
public class MasterCreator {

    public static final String[] AGE_ARRAY = new String[100];
    public static final List<OptionBean> COUNTRY_LIST = new ArrayList<OptionBean>();
    public static final Map<String, CountryBean> COUNTRY_INFO = new HashMap<String, CountryBean>();

    static {
        // ageArrayを作成する
        for(int i = 0, j = AGE_ARRAY.length; i < j; i ++) {
            AGE_ARRAY[i] = String.valueOf(i);
        }

        // countryListを作成する
        COUNTRY_LIST.add(new OptionBean("JP", "Japan"));
        COUNTRY_LIST.add(new OptionBean("CN", "China"));
        COUNTRY_LIST.add(new OptionBean("US", "United States"));
        COUNTRY_LIST.add(new OptionBean("UK", "United Kingdom"));

        // countryInfoを作成する
        COUNTRY_INFO.put("JP", new CountryBean("Japan", "Tokyo", 378000));
        COUNTRY_INFO.put("CN", new CountryBean("China", "Beijing", 9600000));
        COUNTRY_INFO.put("US", new CountryBean("United States", "Washington, D.C.", 9834000));
        COUNTRY_INFO.put("UK", new CountryBean("United Kingdom", "London", 243600));
    }
}
