package pl.sitechecker.reservationsystem.entity;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cglib.core.Local;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.lang.invoke.SerializedLambda;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "orders")
public class Order {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @NotNull
    private LocalDate date;
    @NotNull
    private LocalTime time;

//    private List<Service> services = new ArrayList<>();

//    id usluga data godzina

    @OneToMany
    private List<Service> services = new ArrayList<>();


    public Order() {
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    @NotNull
    public LocalDate getDate() {
        return date;
    }

    public void setDate(@NotNull LocalDate date) {
        this.date = date;
    }

    @NotNull
    public LocalTime getTime() {
        return time;
    }

    public void setTime(@NotNull LocalTime time) {
        this.time = time;
    }

    public List<Service> getServices() {
        return services;
    }

    public void setServices(List<Service> services) {
        this.services = services;
    }

    public LocalTime getTotalDuration() {
        int result = 0;
        for (Service service : this.services) {
            result += service.getDuration();
        }
        return LocalTime.of(result/60,result%60);
    }


}
