package com.ntp.viewmodel;

import com.ntp.models.BacSi;
import com.ntp.models.CaKhamBenh;
import com.ntp.models.LoaiBenh;

import javax.persistence.Column;
import java.sql.Date;

public class Appointment {
    private String ho;
    private String ten;
    private String gioiTinh;
    private String ngaySinh;
    private String dienThoai;
    private String ngayKham;
    private CaKhamBenh caKham;
    private BacSi bacSi;
    private LoaiBenh loaiBenh;

    public String getHo() {
        return ho;
    }

    public void setHo(String ho) {
        this.ho = ho;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public String getGioiTinh() {
        return gioiTinh;
    }

    public void setGioiTinh(String gioiTinh) {
        this.gioiTinh = gioiTinh;
    }

    public String getNgaySinh() {
        return ngaySinh;
    }

    public void setNgaySinh(String ngaySinh) {
        this.ngaySinh = ngaySinh;
    }

    public String getDienThoai() {
        return dienThoai;
    }

    public void setDienThoai(String dienThoai) {
        this.dienThoai = dienThoai;
    }

    public String getNgayKham() {
        return ngayKham;
    }

    public void setNgayKham(String ngayKham) {
        this.ngayKham = ngayKham;
    }

    public CaKhamBenh getCaKham() {
        return caKham;
    }

    public void setCaKham(CaKhamBenh caKham) {
        this.caKham = caKham;
    }

    public BacSi getBacSi() {
        return bacSi;
    }

    public void setBacSi(BacSi bacSi) {
        this.bacSi = bacSi;
    }

    public LoaiBenh getLoaiBenh() {
        return loaiBenh;
    }

    public void setLoaiBenh(LoaiBenh loaiBenh) {
        this.loaiBenh = loaiBenh;
    }
}
