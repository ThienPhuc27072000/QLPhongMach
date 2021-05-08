package com.ntp.repository.implement;

import com.ntp.models.Role;
import com.ntp.repository.IRoleRepository;
import org.springframework.stereotype.Repository;

@Repository
public class RoleRepository extends GenericRepository<Role> implements IRoleRepository {
}
