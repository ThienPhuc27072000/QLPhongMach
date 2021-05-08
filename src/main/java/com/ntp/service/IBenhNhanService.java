package com.ntp.service;

import com.ntp.models.BenhNhan;
import com.ntp.models.PhieuKhamBenh;

import java.util.List;

public interface IBenhNhanService extends IGenericService<BenhNhan> {
    List<BenhNhan> getBenhNhanTheoTen(String ten);
    List<BenhNhan> getTopBenhNhanTheoTen(int limit, String name);
    List<BenhNhan> getTopNewBenhNhan(int limit);
    int getSoLuongPhieuKhamBenhCuaBenhNhan(BenhNhan benhNhan);
    boolean themBenhNhanVaPhieuKhamBenh(BenhNhan benhNhan, PhieuKhamBenh phieuKhamBenh);
}
