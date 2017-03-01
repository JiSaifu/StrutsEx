package com.yuwxw.saifu.ji.lib.struts.bean;

/**
 * Created by jisai on 2017/01/22.
 */
public class CountryBean {
    private String name;
    private String capital;
    private double area;

    public CountryBean(String name, String capital, double area) {
        this.name = name;
        this.capital = capital;
        this.area = area;
    }

    public String getName() { return name; }

    public void setName(String name) { this.name = name; }

    public String getCapital() { return capital; }

    public void setCapital(String capital) { this.capital = capital; }

    public double getArea() { return area; }

    public void setArea(double area) { this.area = area; }
}
