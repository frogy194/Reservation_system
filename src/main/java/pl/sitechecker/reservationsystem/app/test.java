package pl.sitechecker.reservationsystem.app;

import pl.sitechecker.reservationsystem.entity.Service;

import java.lang.invoke.SerializedLambda;
import java.time.LocalDate;
import java.time.LocalTime;

public class test {
    public static void main(String[] args) {
        Service s = new Service();
        int result = 422;

        System.out.println(LocalTime.of(result/60,result%60));



    }
}
