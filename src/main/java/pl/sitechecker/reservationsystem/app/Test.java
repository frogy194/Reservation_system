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
import javax.persistence.criteria.CriteriaBuilder;
import java.lang.invoke.SerializedLambda;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.Scanner;

public class Test {
    public static void main(String[] args) {
        String elo = "13:56-12-56";
        int[] arr = {4, 3, 1, 2};
        int[] ars = {2, 1, 3, 5, 4, 6, 8};
        System.out.println(insertionSort(arr));


    }

    private static int insertionSort(int[] ar) {
        return 1;
    }
}

