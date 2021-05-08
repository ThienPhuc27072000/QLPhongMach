package com.ntp.repository.implement;

import com.ntp.models.Admin;
import com.ntp.repository.IAdminRepository;
import org.springframework.stereotype.Repository;

@Repository
public class AdminRepository extends GenericRepository<Admin> implements IAdminRepository {
}
