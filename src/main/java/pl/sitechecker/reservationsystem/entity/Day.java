//package pl.sitechecker.reservationsystem.entity;
//
//import com.sun.istack.internal.Nullable;
//
//import javax.persistence.*;
//import javax.validation.constraints.Size;
//import java.time.DayOfWeek;
//import java.time.LocalDate;
//import java.time.LocalTime;
//import java.util.ArrayList;
//import java.util.List;
//
//@Entity
//@Table(name = "days")
//public class Day {
//    @Id
//    private LocalDate date;
//    @Size(max = 15)
//    private DayOfWeek dayOfWeek;
//
//    @OneToMany
//    @Nullable
//    private List<Order> orders = new ArrayList<>();
////    dzien tygodnia, data, czas pracy dla danego dnia by serviceprovider, lista zamowien
//
//    @ManyToOne
//    private ServiceProvider serviceProvider;
//
//    public Day() {
//    }
//
//    public Day(LocalDate date) {
//        this.date = date;
//    }
//
//    public LocalDate getDate() {
//        return date;
//    }
//
//    public void setDate(LocalDate date) {
//        this.date = date;
//    }
//
//    public DayOfWeek getDayOfWeek() {
//        return dayOfWeek;
//    }
//
//    public void setDayOfWeek(DayOfWeek dayOfWeek) {
//        this.dayOfWeek = dayOfWeek;
//    }
//
//    public ServiceProvider getServiceProvider() {
//        return serviceProvider;
//    }
//
//    public void setServiceProvider(ServiceProvider serviceProvider) {
//        this.serviceProvider = serviceProvider;
//    }
//
//    public List<Order> getOrders() {
//        return orders;
//    }
//
//    public void setOrders(List<Order> orders) {
//        this.orders = orders;
//    }
//
//
//}
