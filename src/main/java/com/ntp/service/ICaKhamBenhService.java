package com.ntp.service;

import com.ntp.models.BacSi;
import com.ntp.models.CaKhamBenh;

import java.util.Date;
import java.util.List;

public interface ICaKhamBenhService extends IGenericService<CaKhamBenh> {
    List<BacSi> layBacSiTheoCaKham(int id, Date ngayKhamBenh);
}
