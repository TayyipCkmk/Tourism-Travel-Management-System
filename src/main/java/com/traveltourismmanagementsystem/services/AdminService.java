package com.traveltourismmanagementsystem.services;

import com.traveltourismmanagementsystem.model.Admin;

import java.util.List;

public interface AdminService {
    public List<Admin> getAllAdmin();
    public Admin getAdminById(int id);
    public void addAdmin(Admin admin);
    public void deleteAdmin(int id);
    public void deleteAllAdmin();
    public Admin getAdminByUsername(String username);
}
