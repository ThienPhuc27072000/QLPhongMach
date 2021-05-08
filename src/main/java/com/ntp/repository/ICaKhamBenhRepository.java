package com.ntp.repository;

import com.ntp.models.BacSi;
import com.ntp.models.CaKhamBenh;

import java.util.Date;
import java.util.List;

public interface ICaKhamBenhRepository extends IGenericRepository<CaKhamBenh> {
    List<BacSi> layBacSiTheoCaKham(int id, Date ngayKhamBenh);
}
