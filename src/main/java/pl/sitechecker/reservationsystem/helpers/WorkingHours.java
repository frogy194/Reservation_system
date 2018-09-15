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

    public static String changeDurationFromInt(int duration) {

        String h1 = "";
        String m1 = "";
        int h = duration / 60;
        int m = duration % 60;
        if (h < 10) {
            h1 = "0" + h;
        }
        if (m < 10) {
            m1 = "0" + m;
        }
        return h1 + ":" + m1;

    }

    public static String addTime(String a, String b)

    {

        int hourSum = 0;

        int hour1= Integer.parseInt(a.substring(0,2));

        int hour2= Integer.parseInt(b.substring(0,2));

        int min1= Integer.parseInt(a.substring(3,5));

        int min2= Integer.parseInt(b.substring(3,5));

        int minSum = min1 + min2;

        if (minSum > 59) {

            hourSum += 1;
            minSum%=60;

        }

        hourSum = hourSum + hour1 + hour2;

        String hour = "";
        String min = "";
        if (minSum < 10) {
           min = "0" + minSum;
        } else {
            min = "" + minSum;
        }
        if (hourSum < 10) {
            hour = "0" + hourSum;
        } else {
            hour = "" + hourSum;
        }


        return (hour + ":" + min);

    }



    public static void main(String[] args) {


        System.out.println(getSeparatedHours("11:02", "17:15"));
        System.out.println(getSeparatedHours("09:45", "11:15"));
        System.out.println(getSeparatedHours("12:5", "17:15"));
    }






}
