package pl.sitechecker.reservationsystem.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import pl.sitechecker.reservationsystem.entity.ServiceProvider;

import java.util.List;

public interface ServiceProviderRepository extends JpaRepository<ServiceProvider,Long> {
    List<ServiceProvider> findAllById(long id);

}
