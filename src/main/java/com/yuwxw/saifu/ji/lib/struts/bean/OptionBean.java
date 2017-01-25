package com.yuwxw.saifu.ji.lib.struts.bean;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by jisai on 2017/01/22.
 */
public class OptionBean {
    private String value;
    private String label;

    public OptionBean(String value, String label) {
        this.value = value;
        this.label = label;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }
}
