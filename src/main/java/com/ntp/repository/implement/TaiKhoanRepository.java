package com.ntp.repository.implement;

import com.ntp.models.TaiKhoan;
import com.ntp.models.BacSi;
import com.ntp.repository.ITaiKhoanRepository;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Repository
public class TaiKhoanRepository extends GenericRepository<TaiKhoan> implements ITaiKhoanRepository {
    @Override
    @Transactional(readOnly = true, propagation = Propagation.REQUIRED)
    public TaiKhoan getTaiKhoanByUsername(String username) {
        Query q = currentSession().createQuery("From TaiKhoan where username=:u");
        q.setParameter("u", username);
        q.setFirstResult(0);

        return q.getResultList().size() == 0 ? null : (TaiKhoan) q.getResultList().get(0);
    }

    @Override
    @Transactional(readOnly = true, propagation = Propagation.REQUIRED)
    public List<TaiKhoan> getTaiKhoanTheoChucVu(String kw) {
        Query q = currentSession().createQuery("From TaiKhoan where role.ten=:c");
        q.setParameter("c", kw);
        return q.getResultList();
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
    public boolean themTaiKhoanVaBacSi(TaiKhoan taiKhoan, BacSi bacSi) {
        TaiKhoan t = insert(taiKhoan);
        currentSession().save(bacSi);

        return t != null;
    }

    @Override
    @Transactional(readOnly = true, propagation = Propagation.REQUIRED)
    public List<TaiKhoan> layTaiKhoanBacSiConTrong() {
        List<TaiKhoan> result = new ArrayList<>();
        result = currentSession().createSQLQuery("CALL layTaiKhoanBacSiConTrong()")
                .addEntity(TaiKhoan.class).getResultList();
        return result;
    }

    @Override
    @Transactional(readOnly = true, propagation = Propagation.REQUIRED)
    public List<TaiKhoan> layTaiKhoanNhanVienConTrong() {
        List<TaiKhoan> result = new ArrayList<>();
        result = currentSession().createSQLQuery("CALL layTaiKhoanNhanVienConTrong()")
                .addEntity(TaiKhoan.class).getResultList();
        return result;
    }

}
