package co.barclays.demoapp.object;

/**
 * Created by leanh215 on 7/21/15.
 */
public class Limit {

    int dailyLimit;
    int monthlyLimit;

    public Limit(int dailyLimit, int monthlyLimit) {
        this.dailyLimit = dailyLimit;
        this.monthlyLimit = monthlyLimit;
    }

    public int getDailyLimit() {
        return dailyLimit;
    }

    public void setDailyLimit(int dailyLimit) {
        this.dailyLimit = dailyLimit;
    }

    public int getMonthlyLimit() {
        return monthlyLimit;
    }

    public void setMonthlyLimit(int monthlyLimit) {
        this.monthlyLimit = monthlyLimit;
    }
}
