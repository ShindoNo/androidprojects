package co.barclays.demoapp.object;

/**
 * Created by leanh215 on 7/20/15.
 */
public class Account {

    String type;
    String number;
    String name;
    String currencyCode;
    int availableBalance;

    public Account() {
        // init default values
        type = "";
        number = "";
        name = "";
        currencyCode = "";

        availableBalance = 0;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCurrencyCode() {
        return currencyCode;
    }

    public void setCurrencyCode(String currencyCode) {
        this.currencyCode = currencyCode;
    }

    public int getAvailableBalance() {
        return availableBalance;
    }

    public void setAvailableBalance(int availableBalance) {
        this.availableBalance = availableBalance;
    }
}
