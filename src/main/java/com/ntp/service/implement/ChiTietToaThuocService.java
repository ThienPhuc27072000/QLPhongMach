package com.ntp.service.implement;

import com.ntp.models.ChiTietToaThuoc;
import com.ntp.repository.IChiTietToaThuocRepository;
import com.ntp.repository.IGenericRepository;
import com.ntp.service.IChiTietToaThuocService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class ChiTietToaThuocService extends GenericService<ChiTietToaThuoc> implements IChiTietToaThuocService {
    private IChiTietToaThuocRepository chiTietToaThuocRepository;

    @Autowired
    public ChiTietToaThuocService(@Qualifier("chiTietToaThuocRepository")IGenericRepository<ChiTietToaThuoc> genericRepository) {
        super(genericRepository);
        this.chiTietToaThuocRepository = (IChiTietToaThuocRepository) genericRepository;
    }
}
