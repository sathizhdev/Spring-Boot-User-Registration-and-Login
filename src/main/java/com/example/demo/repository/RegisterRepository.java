package com.example.demo.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.modal.userDetails;
@Repository
public interface RegisterRepository extends CrudRepository<userDetails, String>{
	
	
	//named query
	@Query("From userDetails where USER_NAME =?1 and PASSWORD=?2")
	List<userDetails> loginCheck(String userName, String password);
	

	
	//Query Method
	//public userDetails findByUsernameAndPassword(String username, String password);


}
