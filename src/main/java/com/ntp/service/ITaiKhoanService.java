package com.ntp.service;

import com.ntp.models.BacSi;
import com.ntp.models.TaiKhoan;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface ITaiKhoanService extends IGenericService<TaiKhoan>, UserDetailsService {
    TaiKhoan getTaiKhoanByUsername(String username);
    List<TaiKhoan> getTaiKhoanTheoChucVu(String kw);
    boolean themTaiKhoanVaBacSi(TaiKhoan taiKhoan, BacSi bacSi);

    List<TaiKhoan> layTaiKhoanBacSiConTrong();
    List<TaiKhoan> layTaiKhoanNhanVienConTrong();
}
