package com.ntp.models;


import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.Set;

@Entity
@Table(name = "nhanvien")
public class NhanVien implements Serializable {
    @Id
    @Column(name = "id", length = 36)
    private String id;
    @Column(name = "Ho", length = 10, nullable = false)
    private String ho;
    @Column(name = "Ten", length = 45, nullable = false)
    private String ten;
    @Column(name = "GioiTinh", length = 10, nullable = false)
    private String gioiTinh;
    @Column(name = "NgaySinh", nullable = false)
    private Date ngaySinh;
    @Column(name = "DienThoai", length = 10, nullable = false)
    private String dienThoai;
//    @Column(name = "Email", length = 100, nullable = false)
//    private String email;
    @Column(name = "Image")
    private String image;
    @Transient
    private MultipartFile img;
    @OneToOne
    @MapsId
    @JoinColumn(name = "id")
    private TaiKhoan taiKhoan;
    @OneToMany(mappedBy = "nhanVien", fetch = FetchType.LAZY)
    private Set<HoaDon> dsHoaDon;
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

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

    public Date getNgaySinh() {
        return ngaySinh;
    }

    public void setNgaySinh(Date ngaySinh) {
        this.ngaySinh = ngaySinh;
    }

    public String getDienThoai() {
        return dienThoai;
    }

    public void setDienThoai(String dienThoai) {
        this.dienThoai = dienThoai;
    }

    public TaiKhoan getTaiKhoan() {
        return taiKhoan;
    }

    public void setTaiKhoan(TaiKhoan taiKhoan) {
        this.taiKhoan = taiKhoan;
    }

    public Set<HoaDon> getDsHoaDon() {
        return dsHoaDon;
    }

    public void setDsHoaDon(Set<HoaDon> dsHoaDon) {
        this.dsHoaDon = dsHoaDon;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }


    public MultipartFile getImg() {
        return img;
    }

    public void setImg(MultipartFile img) {
        this.img = img;
    }
}
