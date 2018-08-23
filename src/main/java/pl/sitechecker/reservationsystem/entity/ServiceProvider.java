package pl.sitechecker.reservationsystem.entity;

import com.sun.istack.internal.Nullable;
import jdk.nashorn.internal.runtime.regexp.joni.Regex;
import org.hibernate.annotations.Fetch;
import org.hibernate.validator.constraints.NotBlank;


import javax.persistence.*;
import javax.validation.constraints.*;
import java.security.PrivateKey;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Entity
@Table(name = "serviceproviders")
public class ServiceProvider {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @NotBlank
    @Size(max = 15)
    private String name;

    @OneToMany(fetch = FetchType.EAGER)
    private List<Service> services = new ArrayList<>();


    @NotNull
    @Max(100)
    @Min(1)
    private int clientsAtTime;

    @Nullable
    @Pattern(regexp = "\\d\\d:\\d\\d-\\d\\d:\\d\\d")
    private String workingHoursMon;
    @Nullable
    @Pattern(regexp = "\\d\\d:\\d\\d-\\d\\d:\\d\\d")
    private String workingHoursTue;
    @Nullable
    @Pattern(regexp = "\\d\\d:\\d\\d-\\d\\d:\\d\\d")
    private String workingHoursWed;
    @Nullable
    @Pattern(regexp = "\\d\\d:\\d\\d-\\d\\d:\\d\\d")
    private String workingHoursThu;
    @Nullable
    @Pattern(regexp = "\\d\\d:\\d\\d-\\d\\d:\\d\\d")
    private String workingHoursFri;
    @Nullable
    @Pattern(regexp = "\\d\\d:\\d\\d-\\d\\d:\\d\\d")
    private String workingHoursSat;
    @Nullable
    @Pattern(regexp = "\\d\\d:\\d\\d-\\d\\d:\\d\\d")
    private String workingHoursSun;



//    jakie uslugi, czas pracy w dany dzien, aktywny?, ile klientow


    public ServiceProvider() {
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<Service> getServices() {
        return services;
    }

    public void setServices(List<Service> services) {
        this.services = services;
    }

    public int getClientsAtTime() {
        return clientsAtTime;
    }

    public void setClientsAtTime(int clientsAtTime) {
        this.clientsAtTime = clientsAtTime;
    }

    public String getWorkingHoursMon() {
        return workingHoursMon;
    }

    public void setWorkingHoursMon(String workingHoursMon) {
        this.workingHoursMon = workingHoursMon;
    }

    public String getWorkingHoursTue() {
        return workingHoursTue;
    }

    public void setWorkingHoursTue(String workingHoursTue) {
        this.workingHoursTue = workingHoursTue;
    }

    public String getWorkingHoursWed() {
        return workingHoursWed;
    }

    public void setWorkingHoursWed(String workingHoursWed) {
        this.workingHoursWed = workingHoursWed;
    }

    public String getWorkingHoursThu() {
        return workingHoursThu;
    }

    public void setWorkingHoursThu(String workingHoursThu) {
        this.workingHoursThu = workingHoursThu;
    }

    public String getWorkingHoursFri() {
        return workingHoursFri;
    }

    public void setWorkingHoursFri(String workingHoursFri) {
        this.workingHoursFri = workingHoursFri;
    }

    public String getWorkingHoursSat() {
        return workingHoursSat;
    }

    public void setWorkingHoursSat(String workingHoursSat) {
        this.workingHoursSat = workingHoursSat;
    }

    public String getWorkingHoursSun() {
        return workingHoursSun;
    }

    public void setWorkingHoursSun(String workingHoursSun) {
        this.workingHoursSun = workingHoursSun;
    }

}
