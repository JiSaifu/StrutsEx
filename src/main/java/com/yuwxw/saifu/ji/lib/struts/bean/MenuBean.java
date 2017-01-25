package com.yuwxw.saifu.ji.lib.struts.bean;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by jisai on 2017/01/22.
 */
public class MenuBean {
    private List<String> country = new ArrayList<String>();
    private List<String> countryLabel = new ArrayList<String>();

    public List<String> getCountry() {
        return country;
    }

    public void setCountry(List<String> country) {
        this.country = country;
    }

    public List<String> getCountryLabel() {
        return countryLabel;
    }

    public void setCountryLabel(List<String> countryLabel) {
        this.countryLabel = countryLabel;
    }
}
