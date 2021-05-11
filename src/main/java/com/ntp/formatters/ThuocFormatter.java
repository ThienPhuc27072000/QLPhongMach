package com.ntp.formatters;

import com.ntp.models.Thuoc;
import org.springframework.format.Formatter;

import java.text.ParseException;
import java.util.Locale;

public class ThuocFormatter implements Formatter<Thuoc> {
    @Override
    public Thuoc parse(String s, Locale locale) throws ParseException {
        Thuoc thuoc = new Thuoc();
        thuoc.setId(Integer.parseInt(s));
        return thuoc;
    }

    @Override
    public String print(Thuoc thuoc, Locale locale) {
        return thuoc.getTenThuoc();
    }
}
