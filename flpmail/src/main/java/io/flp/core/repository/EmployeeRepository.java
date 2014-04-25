package io.flp.core.repository;
import io.flp.core.domain.Employee;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Employee.class)
public interface EmployeeRepository {
}
