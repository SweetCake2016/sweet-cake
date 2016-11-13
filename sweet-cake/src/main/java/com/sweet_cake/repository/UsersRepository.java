package com.sweet_cake.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.sweet_cake.model.User;

/**
 * @author Danijel
 *
 */
@Repository
public interface UsersRepository extends JpaRepository<User, Integer>{

}
