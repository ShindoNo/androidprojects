package co.barclays.demoapp.datacontroller;

import android.os.Handler;
import android.os.Message;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.HashMap;

import co.barclays.demoapp.network.RequestHelper;
import co.barclays.demoapp.object.Account;
import co.barclays.demoapp.object.Limit;
import co.barclays.demoapp.utils.Config;
import co.barclays.demoapp.utils.NameSpace;

/**
 * Created by leanh215 on 7/21/15.
 */
public class UserController {

    /**
     * Make a request to get account info
     * Note: Return HashMap(String, Object) => ("account", {@link Account}), ("limit", {@link Limit}))
     * @param callback handle response data
     */
    public static void getAccountInfo(final Handler callback) {
        new Thread(new Runnable() {
            @Override
            public void run() {
                String apiUrl = NameSpace.API_ACCOUNT_INFO;
                String params = createParamsToGetAccountInfo();
                String response = RequestHelper.post(callback, apiUrl, params);
                if (response != null) {
                    try {
                        HashMap<String, Object> hashMap = new HashMap<String, Object>();
                        JSONObject data = new JSONObject(response);
                        Account account = parseAccount(data.getJSONObject("Account"));
                        Limit limit = parseLimit(data.getJSONObject("Limit"));
                        hashMap.put("account", account);
                        hashMap.put("limit", limit);

                        Message msg = new Message();
                        msg.what = ErrorCode.SUCCESSFUL;
                        msg.obj = hashMap;
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
     * Create params to get account info
     * @return params in string type
     */
    private static String createParamsToGetAccountInfo() {
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
        account.setType(data.getString("AccountType"));
        account.setName(data.getString("Name"));
        account.setCurrencyCode(data.getString("CurrencyCode"));
        account.setNumber(data.getString("Number"));
        account.setAvailableBalance(data.getInt("AvailableBalance"));
        return account;
    }

    /**
     * Convert from JSON Object to Limit Object
     * @param data
     * @return
     * @throws JSONException
     */
    public static Limit parseLimit(JSONObject data) throws JSONException {
        int dailyLimit = data.getInt("DailyLimit");
        int monthlyLimit = data.getInt("MonthlyLimit");
        return new Limit(dailyLimit, monthlyLimit);
    }


}
