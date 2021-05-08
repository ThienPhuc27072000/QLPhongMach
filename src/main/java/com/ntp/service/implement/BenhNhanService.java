package com.ntp.service.implement;

import com.ntp.models.BenhNhan;
import com.ntp.models.PhieuKhamBenh;
import com.ntp.repository.IBenhNhanRepository;
import com.ntp.repository.IGenericRepository;
import com.ntp.service.IBenhNhanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BenhNhanService extends GenericService<BenhNhan> implements IBenhNhanService {
    private IBenhNhanRepository benhNhanRepository;

    @Autowired
    public BenhNhanService(@Qualifier("benhNhanRepository")IGenericRepository<BenhNhan> iGenericRepository) {
        super(iGenericRepository);
        this.benhNhanRepository = (IBenhNhanRepository) iGenericRepository;
    }

    @Override
    public List<BenhNhan> getBenhNhanTheoTen(String ten) {
        return benhNhanRepository.getBenhNhanTheoTen(ten);
    }

    @Override
    public List<BenhNhan> getTopBenhNhanTheoTen(int limit, String name) {
        return benhNhanRepository.getTopBenhNhanTheoTen(limit, name);
    }

    @Override
    public int getSoLuongPhieuKhamBenhCuaBenhNhan(BenhNhan benhNhan) {
        return benhNhanRepository.getSoLuongPhieuKhamBenhCuaBenhNhan(benhNhan);
    }

    @Override
    public List<BenhNhan> getTopNewBenhNhan(int limit) {
        return benhNhanRepository.getTopNewBenhNhan(limit);
    }

    @Override
    public boolean themBenhNhanVaPhieuKhamBenh(BenhNhan benhNhan, PhieuKhamBenh phieuKhamBenh) {
        return benhNhanRepository.themBenhNhanVaPhieuKhamBenh(benhNhan, phieuKhamBenh);
    }
}
