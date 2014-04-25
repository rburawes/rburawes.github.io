package io.flp.core.repository;
import io.flp.core.domain.Account;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Account.class)
public interface AccountRepository {
}
