package co.barclays.demoapp.datacontroller;

import android.os.Handler;
import android.os.Message;

import org.json.JSONObject;

/**
 * Created by leanh215 on 7/21/15.
 */
public class Utils {

    /**
     * Check response status and return error message if request failed
     * @param handler handle response status
     * @param data response in JSON Object type
     * @return true if status equals to "000000" , false otherwise
     */
    public static boolean checkStatus(Handler handler, JSONObject data) {
        try {
            JSONObject status = data.getJSONObject("Status");
            String code = status.getString("Code");
            if (code.equals("000000")) {
                return true;
            } else {
                String description = status.getString("Description");
                Message msg = new Message();
                msg.what = ErrorCode.FAILED;
                msg.obj = description;
                handler.sendMessage(msg);
                return false;
            }
        } catch (Exception e) {
            e.printStackTrace();
            Message msg = new Message();
            msg.what = ErrorCode.FAILED;
            msg.obj = ErrorCode.MSG_BAD_JSON_FORMAT;
            handler.sendMessage(msg);
            return false;
        }
    }

}
