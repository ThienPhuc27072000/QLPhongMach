package com.ntp.service.implement;

import com.ntp.models.BacSi;
import com.ntp.models.TaiKhoan;
import com.ntp.repository.IGenericRepository;
import com.ntp.repository.ITaiKhoanRepository;
import com.ntp.service.ITaiKhoanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.beans.Transient;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service
public class TaiKhoanService extends GenericService<TaiKhoan> implements ITaiKhoanService {
    private ITaiKhoanRepository taiKhoanRepository;

    @Autowired
    public TaiKhoanService(@Qualifier("taiKhoanRepository")IGenericRepository<TaiKhoan> iGenericRepository) {
        super(iGenericRepository);
        this.taiKhoanRepository = (ITaiKhoanRepository) iGenericRepository;
    }

    @Override
    public TaiKhoan getTaiKhoanByUsername(String username) {
        return taiKhoanRepository.getTaiKhoanByUsername(username);
    }

    @Override
    public List<TaiKhoan> getTaiKhoanTheoChucVu(String kw) {
        return taiKhoanRepository.getTaiKhoanTheoChucVu(kw);
    }

    @Override
    public boolean themTaiKhoanVaBacSi(TaiKhoan taiKhoan, BacSi bacSi) {
        return taiKhoanRepository.themTaiKhoanVaBacSi(taiKhoan, bacSi);
    }

    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Override
    @Transactional(readOnly = true)
    public UserDetails loadUserByUsername(String username)
            throws UsernameNotFoundException {
        TaiKhoan users = taiKhoanRepository.getTaiKhoanByUsername(username);
        if (users == null)
            throw new UsernameNotFoundException("Không tồn tại!");

        Set<GrantedAuthority> authorities = new HashSet<>();
        authorities.add(new SimpleGrantedAuthority(users.getRole().getTen()));
        return new org.springframework.security.core.userdetails.User(
                users.getUsername(), users.getPassword(), authorities);
    }

    @Override
    public List<TaiKhoan> layTaiKhoanBacSiConTrong() {
        return taiKhoanRepository.layTaiKhoanBacSiConTrong();
    }

    @Override
    public List<TaiKhoan> layTaiKhoanNhanVienConTrong() {
        return taiKhoanRepository.layTaiKhoanNhanVienConTrong();
    }

}
