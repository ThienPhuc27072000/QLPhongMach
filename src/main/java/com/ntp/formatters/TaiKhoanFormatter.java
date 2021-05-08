package com.ntp.formatters;

import com.ntp.models.TaiKhoan;
import org.springframework.format.Formatter;

import java.text.ParseException;
import java.util.Locale;

public class TaiKhoanFormatter implements Formatter<TaiKhoan> {
    @Override
    public TaiKhoan parse(String s, Locale locale) throws ParseException {
        TaiKhoan taiKhoan = new TaiKhoan();
        taiKhoan.setId(s);
        return taiKhoan;
    }

    @Override
    public String print(TaiKhoan taiKhoan, Locale locale) {
        return taiKhoan.getUsername();
    }
}
