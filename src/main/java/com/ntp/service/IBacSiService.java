package com.ntp.service;

import com.ntp.models.BacSi;
import com.ntp.models.BenhNhan;
import com.ntp.models.TaiKhoan;
import com.ntp.models.ToaThuoc;

import java.util.List;
import java.util.Set;

public interface IBacSiService extends IGenericService<BacSi> {
    List<BacSi> getBacSiTheoTen(String ten);
    List<BacSi> getTopBacSiTheoTen(int limit, String name);
    Set<ToaThuoc> getToaThuocTheoBacSi(BacSi bacSi);
    Set<BenhNhan> getBenhNhanTheoBacSi(BacSi bacSi);

}
