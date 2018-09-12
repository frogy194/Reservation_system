package pl.sitechecker.reservationsystem.helpers;

import javax.persistence.criteria.CriteriaBuilder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


public class WorkingHours {

    public static List<String> getSeparatedHours(String start, String end) {
        List<String> list = new ArrayList<>();
        Pattern p = Pattern.compile("^([2][0-4]|[0-1][0-9]):([6][0]|[0-5][0-9])$");
        Matcher m1 = p.matcher(start);
        Matcher m2 = p.matcher(end);
        if (!m1.matches() || !m2.matches()) {
            list.add("Wrong format");
            return list;
        }


        String[] startArr = start.split(":");
        String[] endArr = end.split(":");
        if (startArr[0].equals("0") && endArr[0].equals("0") && startArr[1].equals("0") && endArr[1].equals("0")) {
            List<String> empty = new ArrayList<>();
            empty.add("0");
            return empty;
        }

        for (int i = Integer.parseInt(startArr[0]); i < Integer.parseInt(endArr[0]) + 1; i++ ) {
            if (i == Integer.parseInt(startArr[0])) {
                for (int j = Integer.parseInt(startArr[1]); j < 60; j++) {
                    if (j < 10) {
                        list.add(i + ":0" + j);
                    } else {
                        list.add(i + ":" + j);
                    }
                }
            } else if (i == Integer.parseInt(endArr[0])) {
                for (int j = 0; j < Integer.parseInt(endArr[1]) + 1; j++) {
                    if (j < 10) {
                        list.add(i + ":0" + j);
                    } else {
                        list.add(i + ":" + j);
                    }
                }

            }
            else {
                    for (int j = 0; j < 60; j++) {
                        if (j < 10) {
                            list.add(i + ":0" + j);
                        } else {
                            list.add(i + ":" + j);
                        }
                    }
                }
            }


        return list;
    }


    public static void main(String[] args) {


        System.out.println(getSeparatedHours("11:02", "17:15"));
        System.out.println(getSeparatedHours("09:45", "11:15"));
        System.out.println(getSeparatedHours("12:5", "17:15"));
    }






}
