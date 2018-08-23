package pl.sitechecker.reservationsystem.app;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import pl.sitechecker.reservationsystem.entity.Order;
import pl.sitechecker.reservationsystem.entity.Service;
import pl.sitechecker.reservationsystem.entity.ServiceProvider;
import pl.sitechecker.reservationsystem.repository.ServiceProviderRepository;

import javax.persistence.Converter;
import java.lang.invoke.SerializedLambda;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

@Controller
public class Test {

    @Autowired
    private ServiceProviderRepository serviceProviderRepository;

    public int[] elo() throws NullPointerException{

        try {
            for (ServiceProvider x : this.serviceProviderRepository.findAll()) {
                if (x.getWorkingHoursMon() != null) {
                    int min = Integer.parseInt(x.getWorkingHoursMon().substring(0, 2));
                    int max = Integer.parseInt(x.getWorkingHoursMon().substring(5, 7));
                    int[] nice = {min, max};
                    System.out.println(nice);
                }
            }
        } catch (NullPointerException e) {
         e.printStackTrace();}
            int[] nice = {2, 1};

       return nice;
    }

    public static void main(String[] args) {
        Test test = new Test();
        test.elo();

    }

    public Test() {
    }

    public ServiceProviderRepository getServiceProviderRepository() {
        return serviceProviderRepository;
    }

    public void setServiceProviderRepository(ServiceProviderRepository serviceProviderRepository) {
        this.serviceProviderRepository = serviceProviderRepository;
    }
}
