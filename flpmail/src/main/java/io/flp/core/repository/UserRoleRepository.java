package io.flp.core.repository;
import io.flp.core.domain.UserRole;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = UserRole.class)
public interface UserRoleRepository {
}
