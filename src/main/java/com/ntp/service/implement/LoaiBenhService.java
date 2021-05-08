package com.ntp.service.implement;

import com.ntp.models.LoaiBenh;
import com.ntp.repository.IGenericRepository;
import com.ntp.repository.ILoaiBenhRepository;
import com.ntp.service.ILoaiBenhService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LoaiBenhService extends GenericService<LoaiBenh> implements ILoaiBenhService {
    private ILoaiBenhRepository loaiBenhRepository;

    @Autowired
    public LoaiBenhService(@Qualifier("loaiBenhRepository")IGenericRepository<LoaiBenh> iGenericRepository) {
        super(iGenericRepository);
        this.loaiBenhRepository = (ILoaiBenhRepository) iGenericRepository;
    }

    @Override
    public List<LoaiBenh> getLoaiBenhTheoTen(String ten) {
        return loaiBenhRepository.getLoaiBenhTheoTen(ten);
    }

    @Override
    public List<LoaiBenh> getLoaiBenhTheoMoTa(String moTa) {
        return loaiBenhRepository.getLoaiBenhTheoMoTa(moTa);
    }
}
