package com.ntp.models;

import javax.persistence.*;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.math.BigDecimal;

@Entity
@Table(name = "chitiettoathuoc")
public class ChiTietToaThuoc implements Serializable {
    @Column(name = "SoLuong")
    @Min(value = 1, message = "Tu ghi")
    private  int soLuong;

    @Column(name = "DonGia")
    private BigDecimal donGia;

    @Column(name = "ThanhTien")
    private BigDecimal thanhTien;

    @Id
    @ManyToOne
    @JoinColumn(name = "MaToaThuoc")
    private ToaThuoc toaThuoc;

    @Id
    @ManyToOne
    @JoinColumn(name = "MaThuoc")
    @NotNull(message = "Tu ghi")
    private Thuoc thuoc;


    public int getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }

    public BigDecimal getDonGia() {
        return donGia;
    }

    public void setDonGia(BigDecimal donGia) {
        this.donGia = donGia;
    }

    public BigDecimal getThanhTien() {
        return thanhTien;
    }

    public void setThanhTien(BigDecimal thanhTien) {
        this.thanhTien = thanhTien;
    }

    public ToaThuoc getToaThuoc() {
        return toaThuoc;
    }

    public void setToaThuoc(ToaThuoc toaThuoc) {
        this.toaThuoc = toaThuoc;
    }

    public Thuoc getThuoc() {
        return thuoc;
    }

    public void setThuoc(Thuoc thuoc) {
        this.thuoc = thuoc;
    }
}
