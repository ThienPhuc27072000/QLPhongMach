package com.ntp.service.implement;

import com.ntp.models.HoaDon;
import com.ntp.repository.IGenericRepository;
import com.ntp.repository.IHoaDonRepository;
import com.ntp.service.IHoaDonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class HoaDonService extends GenericService<HoaDon> implements IHoaDonService {
    private IHoaDonRepository hoaDonRepository;

    @Autowired
    public HoaDonService(@Qualifier("hoaDonRepository")IGenericRepository<HoaDon> iGenericRepository) {
        super(iGenericRepository);
        this.hoaDonRepository = (IHoaDonRepository) iGenericRepository;
    }
}
