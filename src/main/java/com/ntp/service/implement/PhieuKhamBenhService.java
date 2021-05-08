package com.ntp.service.implement;

import com.ntp.models.LoaiBenh;
import com.ntp.models.PhieuKhamBenh;
import com.ntp.repository.IGenericRepository;
import com.ntp.repository.ILoaiBenhRepository;
import com.ntp.repository.IPhieuKhamBenhRepository;
import com.ntp.service.IPhieuKhamBenhService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class PhieuKhamBenhService extends GenericService<PhieuKhamBenh> implements IPhieuKhamBenhService {
    private IPhieuKhamBenhRepository phieuKhamBenhRepository;

    @Autowired
    public PhieuKhamBenhService(@Qualifier("phieuKhamBenhRepository") IGenericRepository<PhieuKhamBenh> iGenericRepository) {
        super(iGenericRepository);
        this.phieuKhamBenhRepository = (IPhieuKhamBenhRepository) iGenericRepository;
    }
}
