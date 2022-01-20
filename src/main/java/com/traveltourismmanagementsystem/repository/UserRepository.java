package com.traveltourismmanagementsystem.repository;

import com.traveltourismmanagementsystem.model.User;
import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends CrudRepository <User, Integer>{
    User findByUsername(String username);
}
