// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package io.flp.core.service;

import io.flp.core.domain.Salary;
import io.flp.core.repository.SalaryRepository;
import io.flp.core.service.SalaryServiceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect SalaryServiceImpl_Roo_Service {
    
    declare @type: SalaryServiceImpl: @Service;
    
    declare @type: SalaryServiceImpl: @Transactional;
    
    @Autowired
    SalaryRepository SalaryServiceImpl.salaryRepository;
    
    public long SalaryServiceImpl.countAllSalarys() {
        return salaryRepository.count();
    }
    
    public void SalaryServiceImpl.deleteSalary(Salary salary) {
        salaryRepository.delete(salary);
    }
    
    public Salary SalaryServiceImpl.findSalary(Long id) {
        return salaryRepository.findOne(id);
    }
    
    public List<Salary> SalaryServiceImpl.findAllSalarys() {
        return salaryRepository.findAll();
    }
    
    public List<Salary> SalaryServiceImpl.findSalaryEntries(int firstResult, int maxResults) {
        return salaryRepository.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public void SalaryServiceImpl.saveSalary(Salary salary) {
        salaryRepository.save(salary);
    }
    
    public Salary SalaryServiceImpl.updateSalary(Salary salary) {
        return salaryRepository.save(salary);
    }
    
}