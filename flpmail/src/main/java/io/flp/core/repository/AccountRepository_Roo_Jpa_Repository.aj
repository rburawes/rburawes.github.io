// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package io.flp.core.repository;

import io.flp.core.domain.Account;
import io.flp.core.repository.AccountRepository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

privileged aspect AccountRepository_Roo_Jpa_Repository {
    
    declare parents: AccountRepository extends JpaRepository<Account, Long>;
    
    declare parents: AccountRepository extends JpaSpecificationExecutor<Account>;
    
    declare @type: AccountRepository: @Repository;
    
}
