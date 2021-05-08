package com.ntp.service.implement;

import com.ntp.models.Thuoc;
import com.ntp.repository.IGenericRepository;
import com.ntp.repository.IThuocRepository;
import com.ntp.service.IThuocService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class ThuocService extends GenericService<Thuoc> implements IThuocService {
    private IThuocRepository thuocRepository;

    @Autowired
    public ThuocService(@Qualifier("thuocRepository")IGenericRepository<Thuoc> genericRepository) {
        super(genericRepository);
        this.thuocRepository = (IThuocRepository) genericRepository;
    }
}
