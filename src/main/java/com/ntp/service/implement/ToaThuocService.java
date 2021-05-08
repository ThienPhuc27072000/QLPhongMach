package com.ntp.service.implement;

import com.ntp.models.ToaThuoc;
import com.ntp.repository.IGenericRepository;
import com.ntp.repository.IToaThuocRepository;
import com.ntp.service.IToaThuocService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class ToaThuocService extends GenericService<ToaThuoc> implements IToaThuocService {
    private IToaThuocRepository toaThuocRepository;

    @Autowired
    public ToaThuocService(@Qualifier("toaThuocRepository")IGenericRepository<ToaThuoc> iGenericRepository) {
        super(iGenericRepository);
        this.toaThuocRepository = (IToaThuocRepository) iGenericRepository;
    }
}
