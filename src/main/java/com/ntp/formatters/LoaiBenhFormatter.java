package com.ntp.formatters;

import com.ntp.models.LoaiBenh;
import org.springframework.format.Formatter;

import java.text.ParseException;
import java.util.Locale;

public class LoaiBenhFormatter implements Formatter<LoaiBenh> {
    @Override
    public LoaiBenh parse(String s, Locale locale) throws ParseException {
        LoaiBenh loaiBenh = new LoaiBenh();
        loaiBenh.setId(Integer.parseInt(s));
        return loaiBenh;
    }

    @Override
    public String print(LoaiBenh loaiBenh, Locale locale) {
        return loaiBenh.getTenBenh();
    }
}
