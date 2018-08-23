//package pl.sitechecker.reservationsystem.helpers;
//
//
//import javax.persistence.Converter;
//import java.time.LocalTime;
//
//public class WorkingHours {
//    private int startingHour;
//    private int startingMinute;
//    private int endingHour;
//    private int endingMinute;
//
//    public WorkingHours() {
//
//    }
//
//    public LocalTime startTime() {
//
//        return LocalTime.of(this.startingHour,this.startingMinute);
//    }
//
//    public LocalTime endTime() {
//        return LocalTime.of(this.endingHour, this.endingMinute);
//    }
//
//    public int getStartingHour() {
//        return startingHour;
//    }
//
//    public void setStartingHour(int startingHour) {
//        this.startingHour = startingHour;
//    }
//
//    public int getStartingMinute() {
//        return startingMinute;
//    }
//
//    public void setStartingMinute(int startingMinute) {
//        this.startingMinute = startingMinute;
//    }
//
//    public int getEndingHour() {
//        return endingHour;
//    }
//
//    public void setEndingHour(int endingHour) {
//        this.endingHour = endingHour;
//    }
//
//    public int getEndingMinute() {
//        return endingMinute;
//    }
//
//    public void setEndingMinute(int endingMinute) {
//        this.endingMinute = endingMinute;
//    }
//}
