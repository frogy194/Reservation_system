package pl.sitechecker.reservationsystem.converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import pl.sitechecker.reservationsystem.entity.Service;
import pl.sitechecker.reservationsystem.repository.ServiceRepository;


public class ServiceConverter implements Converter<String, Service> {
    @Autowired
    ServiceRepository serviceRepository;

    @Override
    public Service convert(String source) {
        return serviceRepository.getOne(Long.parseLong(source));
    }
}
