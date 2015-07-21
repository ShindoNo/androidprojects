package co.barclays.demoapp.utils;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.preference.PreferenceManager;
import android.view.View;
import android.view.inputmethod.InputMethodManager;

import java.text.DecimalFormat;

import co.barclays.demoapp.R;

public class Utils {

	/**
	 * Save a string to shared preferences
	 * @param context application context
	 * @param key key of string
	 * @param value value of string
	 */
	public static void saveString(Context context, String key, String value) {
		PreferenceManager.getDefaultSharedPreferences(context).edit().putString(key, value).commit();
	}

    /**
     * Get string with given key from shared preferences
     * @param context application context
     * @param key key of string
     * @return value of string, @null otherwise
     */
	public static String getString(Context context, String key) {
		return PreferenceManager.getDefaultSharedPreferences(context).getString(key, null);
	}

    /**
     * Format number to readable type
     * @param number input number
     * @return formatted input
     */
	public static String formatNumber(int number) {
		DecimalFormat formatter = new DecimalFormat("###,###,###.##");
		return formatter.format(number);
	}

    /**
     * Hide soft keyboard
     * @param view used to get window token
     */
	public static void hideSoftKeyboard(View view) {
		InputMethodManager imm = (InputMethodManager) view.getContext().getSystemService(Context.INPUT_METHOD_SERVICE);
		imm.hideSoftInputFromWindow(view.getWindowToken(), 0);
	}

    /**
     * Show soft keyboard
     * @param view used to get window token
     */
	public static void showSoftKeyboard(final View view) {
		final InputMethodManager imm = (InputMethodManager) view.getContext().getSystemService(
				Context.INPUT_METHOD_SERVICE);

		view.postDelayed(new Runnable() {
            @Override
            public void run() {
                // TODO Auto-generated method stub
                imm.showSoftInput(view, 0);
            }
        }, 500);
	}

    /**
     * Show dialog to confirm exit
     * @param activity
     */
    public static void showExitDialog(final Activity activity) {
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setMessage(activity.getString(R.string.exit_app));
        builder.setPositiveButton(activity.getString(R.string.ok), new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                dialog.dismiss();
                activity.finish();
                MyLog.log("which=" + which);
            }
        });
        builder.setNegativeButton(activity.getString(R.string.cancel), new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                dialog.dismiss();
                MyLog.log("which=" + which);
            }
        });
        builder.show();
    }

    /**
     * Show dialog message
     * @param context application context
     * @param message content of message
     * @param positive content of positive button
     * @param negative content of negative button
     * @param onClickListener callback for press action
     */
    public static void showMessageDialog(Context context, String message,
                                         String positive, String negative,
                                         DialogInterface.OnClickListener onClickListener) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setMessage(message);
        builder.setPositiveButton(positive, onClickListener);
        builder.setNegativeButton(negative, onClickListener);
        builder.show();
    }

}
