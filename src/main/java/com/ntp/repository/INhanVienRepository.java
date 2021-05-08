package com.ntp.repository;

import com.ntp.models.NhanVien;

import java.util.List;

public interface INhanVienRepository extends IGenericRepository<NhanVien> {
    List<NhanVien> getNhanVienTheoTen(String ten);
}
