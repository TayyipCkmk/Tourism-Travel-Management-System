package com.traveltourismmanagementsystem.services;

import com.traveltourismmanagementsystem.model.Admin;
import com.traveltourismmanagementsystem.repository.AdminRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class AdminServiceImplementation implements AdminService{

    @Autowired
    AdminRepository adminRepository;

    @Override
    public List<Admin> getAllAdmin() {
        return (List<Admin>) adminRepository.findAll();
    }

    @Override
    public Admin getAdminById(int id) {
        return adminRepository.findById(id).get();
    }

    @Override
    public void addAdmin(Admin admin) {
        adminRepository.save(admin);
    }

    @Override
    public void deleteAdmin(int id) {
        adminRepository.deleteById(id);
    }

    @Override
    public void deleteAllAdmin() {
        adminRepository.deleteAll();
    }

    @Override
    public Admin getAdminByUsername(String username) {
        Admin user =  adminRepository.findByUsername(username);
        return user;
    }

}
