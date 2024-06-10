package com.kiet.repository;

import com.kiet.entity.Account;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AccountRepository extends JpaRepository<Account, String> {
    Account findByUsernameAndPassword(String username, String password);
}
