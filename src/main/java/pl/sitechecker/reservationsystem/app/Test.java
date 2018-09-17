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

    }


    static void minimumBribes(int[] q) {
        int minimumBribes = 0;
        for (int j = 0; j < 3; j++) {
            for (int i = 0; i < q.length - 1; i++) {

                if (q[i] > i + 3) {
                    System.out.println("Too chaotic");
                    return;
                } else if (q[i] > q[i + 2]) {
                    int hold = q[i+1];
                    q[i+1] = q[i + 2];
                    q[i + 2] = hold;
                    minimumBribes++;
                }  else if (q[i] > q[i + 1]) {
                    int hold = q[i];
                    q[i] = q[i + 1];
                    q[i + 1] = hold;
                    minimumBribes++;
                }


            }
        }
        System.out.println(minimumBribes);
    }

}

