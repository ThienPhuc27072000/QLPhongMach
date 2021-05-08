package com.ntp.service.implement;

import com.ntp.models.NhanVien;
import com.ntp.repository.IGenericRepository;
import com.ntp.repository.INhanVienRepository;
import com.ntp.service.INhanVienService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class NhanVienService extends GenericService<NhanVien> implements INhanVienService {
    private INhanVienRepository nhanVienRepository;

    @Autowired
    public NhanVienService(@Qualifier("nhanVienRepository")IGenericRepository<NhanVien> genericRepository) {
        super(genericRepository);
        this.nhanVienRepository = (INhanVienRepository) genericRepository;
    }
}
