// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package io.flp.core.repository;

import io.flp.core.domain.Salary;
import io.flp.core.repository.SalaryRepository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

privileged aspect SalaryRepository_Roo_Jpa_Repository {
    
    declare parents: SalaryRepository extends JpaRepository<Salary, Long>;
    
    declare parents: SalaryRepository extends JpaSpecificationExecutor<Salary>;
    
    declare @type: SalaryRepository: @Repository;
    
}
