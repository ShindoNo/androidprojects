package co.barclays.demoapp.datacontroller;

import android.os.Handler;
import android.os.Message;

import org.json.JSONException;
import org.json.JSONObject;

import co.barclays.demoapp.network.RequestHelper;
import co.barclays.demoapp.object.Account;
import co.barclays.demoapp.utils.Config;
import co.barclays.demoapp.utils.NameSpace;

/**
 * Created by leanh215 on 7/21/15.
 */
public class UserController {

    /**
     * Make a request to get account info
     * @param callback handle response data
     */
    public static void getAccountInfo(final Handler callback) {
        new Thread(new Runnable() {
            @Override
            public void run() {
                String apiUrl = NameSpace.API_ACCOUNT_INFO;
                String params = createParamsAccountInfo();
                String response = RequestHelper.post(callback, apiUrl, params);
                if (response != null) {
                    try {
                        JSONObject data = new JSONObject(response);
                        Account account = parseAccount(data);
                        Message msg = new Message();
                        msg.what = ErrorCode.SUCCESSFUL;
                        msg.obj = account;
                        callback.sendMessage(msg);
                    } catch (Exception e) {
                        e.printStackTrace();
                        Message msg = new Message();
                        msg.what = ErrorCode.FAILED;
                        msg.obj = ErrorCode.MSG_BAD_JSON_FORMAT;
                        callback.sendMessage(msg);
                    }
                }
            }
        }).start();
    }

    /**
     * Create params
     * @return
     */
    private static String createParamsAccountInfo() {
        try {
            JSONObject params = new JSONObject();
            params.put("InstallationId", Config.InstallationId);
            return params.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    /**
     * Convert from JSON Object to Account Object
     * @param data JSON Object
     * @return Account Object
     * @throws JSONException
     */
    public static Account parseAccount(JSONObject data) throws JSONException {
        Account account = new Account();

        // get account info
        JSONObject accountInfo = data.getJSONObject("Account");
        account.setType(accountInfo.getString("AccountType"));
        account.setName(accountInfo.getString("Name"));
        account.setCurrencyCode(accountInfo.getString("CurrencyCode"));
        account.setNumber(accountInfo.getString("Number"));
        account.setAvailableBalance(accountInfo.getInt("AvailableBalance"));

        // get limitation info
        JSONObject limitInfo = data.getJSONObject("Limit");
        account.setDailyLimit(limitInfo.getInt("DailyLimit"));
        account.setMonthlyLimit(limitInfo.getInt("MonthlyLimit"));

        return account;
    }
}
