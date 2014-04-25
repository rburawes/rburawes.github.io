// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package io.flp.core.domain;

import io.flp.core.domain.Employee;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Version;

privileged aspect Employee_Roo_Jpa_Entity {
    
    declare @type: Employee: @Entity;
    
    declare @type: Employee: @Table(schema = "public", name = "employee");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Employee.id;
    
    @Version
    @Column(name = "version")
    private Integer Employee.version;
    
    public Long Employee.getId() {
        return this.id;
    }
    
    public void Employee.setId(Long id) {
        this.id = id;
    }
    
    public Integer Employee.getVersion() {
        return this.version;
    }
    
    public void Employee.setVersion(Integer version) {
        this.version = version;
    }
    
}
