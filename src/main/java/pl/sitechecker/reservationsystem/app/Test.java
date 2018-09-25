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
import java.util.function.IntPredicate;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.Scanner;
import java.util.stream.IntStream;

public class Test {
    private static final Scanner scanner = new Scanner(System.in);
    public static void main(String[] args) {
        int s = scanner.nextInt();
        IntPredicate checker = x -> x == s;
        String[] toCheck = scanner.nextLine().trim().split(" ");
        if (Arrays.stream(toCheck).mapToInt(Integer::parseInt).anyMatch(checker)) {
                System.out.println("YES");
                return;

        }
        System.out.println("NO");
    }
}

