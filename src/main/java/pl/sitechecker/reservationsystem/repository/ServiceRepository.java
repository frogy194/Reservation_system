package pl.sitechecker.reservationsystem.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.sitechecker.reservationsystem.entity.Service;
import java.util.List;

public interface ServiceRepository extends JpaRepository<Service,Long> {
    List<Service> findAllById(long id);
    Service findById(long id);
    List<Service> findAll();
}
