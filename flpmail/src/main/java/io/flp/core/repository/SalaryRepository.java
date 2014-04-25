package io.flp.core.repository;
import io.flp.core.domain.Salary;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Salary.class)
public interface SalaryRepository {
}
