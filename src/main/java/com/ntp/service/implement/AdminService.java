package com.ntp.service.implement;

import com.ntp.models.Admin;
import com.ntp.repository.IAdminRepository;
import com.ntp.repository.IGenericRepository;
import com.ntp.service.IAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class AdminService extends GenericService<Admin> implements IAdminService {
    private IAdminRepository adminRepository;

    @Autowired
    public AdminService(@Qualifier("adminRepository")IGenericRepository<Admin> genericRepository) {
        super(genericRepository);
        this.adminRepository = (IAdminRepository) genericRepository;
    }
}
