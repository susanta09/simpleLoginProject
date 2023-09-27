package com.example.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.entity.User;

public interface UserRepository extends JpaRepository<User,Integer> {

	@Query("select name from User where name=:name and password=:pass")
	String getNameByNameAndPassword(String name,String pass);
}
