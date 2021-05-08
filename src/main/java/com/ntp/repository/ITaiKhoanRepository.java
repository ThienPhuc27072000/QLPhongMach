package com.ntp.repository;

import com.ntp.models.TaiKhoan;
import com.ntp.models.BacSi;

import java.util.List;

public interface ITaiKhoanRepository extends IGenericRepository<TaiKhoan> {
    TaiKhoan getTaiKhoanByUsername(String username);
    List<TaiKhoan> getTaiKhoanTheoChucVu(String kw);
    boolean themTaiKhoanVaBacSi(TaiKhoan taiKhoan, BacSi bacSi);

    List<TaiKhoan> layTaiKhoanBacSiConTrong();
    List<TaiKhoan> layTaiKhoanNhanVienConTrong();
}
