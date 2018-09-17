package pl.sitechecker.reservationsystem.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.sitechecker.reservationsystem.entity.Order;
import pl.sitechecker.reservationsystem.entity.Service;

import java.util.List;

public interface OrderRepository extends JpaRepository<Order,Long> {
    List<Order> findAllByDate(String date);

    List<Order> findOrderByDateAndId(String date, long id);

}
