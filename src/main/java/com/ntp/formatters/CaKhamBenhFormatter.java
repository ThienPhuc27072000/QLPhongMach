package com.ntp.formatters;

import com.ntp.models.CaKhamBenh;
import org.springframework.format.Formatter;

import java.text.ParseException;
import java.util.Locale;

public class CaKhamBenhFormatter implements Formatter<CaKhamBenh> {
    @Override
    public CaKhamBenh parse(String s, Locale locale) throws ParseException {
        CaKhamBenh caKhamBenh = new CaKhamBenh();
        caKhamBenh.setId(Integer.parseInt(s));
        return caKhamBenh;
    }

    @Override
    public String print(CaKhamBenh caKhamBenh, Locale locale) {
        return caKhamBenh.getTenCa();
    }
}
