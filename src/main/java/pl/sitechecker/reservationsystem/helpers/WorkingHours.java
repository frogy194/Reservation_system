package pl.sitechecker.reservationsystem.helpers;

import javax.persistence.criteria.CriteriaBuilder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;


public class WorkingHours {

    public static List<Integer> getSeparetedHours(int start, int end) {
        List<Integer> list = new ArrayList<>();
        if (start == 0 && end == 0) {
            List<Integer> empty = new ArrayList<>();
            empty.add(0);
            return empty;
        }

        for (int i = start; i < end; i++ ) {
            list.add(i);
        }

        return list;
    }









}
