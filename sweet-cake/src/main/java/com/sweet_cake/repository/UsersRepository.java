package com.sweet_cake.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.sweet_cake.model.User;

/**
 * @author Danijel
 *
 */
@Repository
public interface UsersRepository extends JpaRepository<User, Integer>{

	User findOne(Integer id);
	@Modifying(clearAutomatically = true)
	@Query(value = "UPDATE User u SET u.firstName = :firstName WHERE u.id = :id")
	void updateUser(@Param("id") Integer id, @Param("firstName") String firstName);
}
