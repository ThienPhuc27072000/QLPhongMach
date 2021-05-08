package com.ntp.service.implement;

import com.ntp.models.Role;
import com.ntp.repository.IGenericRepository;
import com.ntp.service.IGenericService;
import com.ntp.service.IRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class RoleService extends GenericService<Role> implements IRoleService {
    private IGenericRepository<Role> roleRepository;

    @Autowired
    public RoleService(@Qualifier("roleRepository")IGenericRepository<Role> iGenericRepository) {
        super(iGenericRepository);
        this.roleRepository = iGenericRepository;
    }
}
