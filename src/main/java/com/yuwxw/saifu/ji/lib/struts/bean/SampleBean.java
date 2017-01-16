package com.yuwxw.saifu.ji.lib.struts.bean;

import java.util.Date;
import java.util.Map;

/**
 * Created by jisai on 2017/01/12.
 */
public class SampleBean {

    private double doubleNum;
    private int[] arrays;
    private Map map;
    private Date date;

    public double getDoubleNum() {
        return doubleNum;
    }
    public void setDoubleNum(double doubleNum) {
        this.doubleNum = doubleNum;
    }

    public int[] getArrays() {
        return arrays;
    }
    public void setArrays(int[] arrays) {
        this.arrays = arrays;
    }

    public Map getMap() {
        return map;
    }
    public void setMap(Map map) {
        this.map = map;
    }

    public Date getDate() { return date; }
    public void setDate(Date date) { this.date = date; }
}
