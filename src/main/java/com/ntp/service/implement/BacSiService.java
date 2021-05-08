package com.ntp.service.implement;

import com.ntp.models.BacSi;
import com.ntp.models.BenhNhan;
import com.ntp.models.TaiKhoan;
import com.ntp.models.ToaThuoc;
import com.ntp.repository.IBacSiRepository;
import com.ntp.repository.IGenericRepository;
import com.ntp.repository.implement.BacSiRepository;
import com.ntp.service.IBacSiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Set;

@Service
public class BacSiService extends GenericService<BacSi> implements IBacSiService {
    private IBacSiRepository bacSiRepository;

    @Autowired
    public BacSiService(@Qualifier("bacSiRepository")IGenericRepository<BacSi> iGenericRepository) {
        super(iGenericRepository);
        this.bacSiRepository = (IBacSiRepository) iGenericRepository;
    }

    @Override
    public List<BacSi> getBacSiTheoTen(String ten) {
        return bacSiRepository.getBacSiTheoTen(ten);
    }

    @Override
    public List<BacSi> getTopBacSiTheoTen(int limit, String name) {
        return bacSiRepository.getTopBacSiTheoTen(limit, name);
    }

    @Override
    public Set<ToaThuoc> getToaThuocTheoBacSi(BacSi bacSi) {
        return bacSiRepository.getToaThuocTheoBacSi(bacSi);
    }

    @Override
    public Set<BenhNhan> getBenhNhanTheoBacSi(BacSi bacSi) {
        return bacSiRepository.getBenhNhanTheoBacSi(bacSi);
    }

}
