package co.barclays.demoapp.datacontroller;

import android.os.Handler;
import android.os.Message;

import org.json.JSONException;
import org.json.JSONObject;

import co.barclays.demoapp.network.RequestHelper;
import co.barclays.demoapp.object.Account;
import co.barclays.demoapp.object.Payment;
import co.barclays.demoapp.utils.Config;
import co.barclays.demoapp.utils.NameSpace;

/**
 * Created by leanh215 on 7/21/15.
 */
public class PaymentController {
    /**
     * Init a payment to destination account
     * @param handler handle request response, return {@link Payment} if request is successful
     * @param destinationAccount account which sent money to
     * @param amount air time amount
     */
    public static void initPayment(final Handler handler, final Account destinationAccount, final int amount) {
        new Thread(new Runnable() {
            @Override
            public void run() {
                String apiUrl = NameSpace.API_INIT_PAYMENT;
                String params = createParamsToInitPayment(destinationAccount, amount);
                String response = RequestHelper.post(handler, apiUrl, params);

                if (response != null) {
                    try {
                        JSONObject data = new JSONObject(response);

                        if (Utils.checkStatus(handler, data)) { // check status first
                            Payment payment = parsePayment(data.getJSONObject("Payment"));
                            Message msg = new Message();
                            msg.what = ErrorCode.SUCCESSFUL;
                            msg.obj = payment;
                            handler.sendMessage(msg);
                        }
                    } catch (JSONException e) {
                        e.printStackTrace();
                        Message msg = new Message();
                        msg.what = ErrorCode.FAILED;
                        msg.obj = ErrorCode.MSG_BAD_JSON_FORMAT;
                        handler.sendMessage(msg);
                    }
                }
            }
        }).start();
    }

    /**
     * Create params to init payment
     * @param destinationAccount account which sent money to
     * @param amount air time amount
     * @return
     */
    public static String createParamsToInitPayment(Account destinationAccount, int amount) {
        try {
            JSONObject params = new JSONObject();

            // put InstallationId into params
            params.put("InstallationId", Config.InstallationId);

            // create payment object
            JSONObject payment = new JSONObject();

            // create destination account object
            JSONObject account = new JSONObject();
            account.put("AccountType", destinationAccount.getType());
            account.put("Name", destinationAccount.getName());
            account.put("Number", destinationAccount.getNumber());

            // put account into payment
            payment.put("DestinationAccount", account);

            // put amount and currency code into payment
            payment.put("CurrencyCode", destinationAccount.getCurrencyCode());
            payment.put("Amount", amount);

            // put payment into params
            params.put("Payment", payment);

            return params.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    /**
     * Parse from JSON Object to {@link Payment} Object
     * @param data data in JSON Object type
     * @return Payment Object converted from JSON Object data
     * @throws JSONException
     */
    public static Payment parsePayment(JSONObject data) throws JSONException {
        Payment payment = new Payment();
        payment.setAmount(data.getInt("Amount"));
        payment.setCurrencyCode(data.getString("CurrencyCode"));

        try {
            // maybe sourceAccount == null in data => try catch error here
            JSONObject sourceAccount = data.getJSONObject("SourceAccount");
            payment.setSourceAccount(UserController.parseAccount(sourceAccount));
        } catch (Exception e) {
            e.printStackTrace();
        }

        JSONObject destinationAccount = data.getJSONObject("DestinationAccount");
        payment.setDestinationAccount(UserController.parseAccount(destinationAccount));

        return payment;
    }
}
