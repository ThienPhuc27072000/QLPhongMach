package com.ntp.service;

import com.ntp.models.LoaiBenh;

import java.util.List;

public interface ILoaiBenhService extends IGenericService<LoaiBenh> {
    List<LoaiBenh> getLoaiBenhTheoTen(String ten);
    List<LoaiBenh> getLoaiBenhTheoMoTa(String moTa);
}
