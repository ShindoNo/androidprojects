package co.barclays.demoapp.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.preference.PreferenceManager;
import android.util.TypedValue;
import android.view.View;
import android.view.inputmethod.InputMethodManager;

import java.io.InputStream;
import java.io.OutputStream;
import java.text.DecimalFormat;

public class Utils {

	public static void saveString(Context context, String key, String value) {
		PreferenceManager.getDefaultSharedPreferences(context).edit().putString(key, value).commit();
	}

	public static String getString(Context context, String key) {
		return PreferenceManager.getDefaultSharedPreferences(context).getString(key, null);
	}



	public static void CopyStream(InputStream is, OutputStream os) {
		final int buffer_size = 1024;
		try {

			byte[] bytes = new byte[buffer_size];
			for (;;) {
				// Read byte from input stream

				int count = is.read(bytes, 0, buffer_size);
				if (count == -1)
					break;

				// Write byte from output stream
				os.write(bytes, 0, count);
			}
		} catch (Exception ex) {
		}
	}

	public static String formatNumber(int number) {
		DecimalFormat formatter = new DecimalFormat("###,###,###.##");
		return formatter.format(number);
	}

	public static Bitmap getCroppedBitmap(Bitmap bitmap) {
		if (bitmap != null) {
			Bitmap output = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Config.ARGB_8888);
			Canvas canvas = new Canvas(output);

			final int color = 0xff424242;
			final Paint paint = new Paint();
			final Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());

			paint.setAntiAlias(true);
			canvas.drawARGB(0, 0, 0, 0);
			paint.setColor(color);

			// canvas.drawRoundRect(rectF, roundPx, roundPx, paint);
			canvas.drawCircle(bitmap.getWidth() / 2, bitmap.getHeight() / 2, bitmap.getWidth() / 2, paint);
			paint.setXfermode(new PorterDuffXfermode(Mode.SRC_IN));
			canvas.drawBitmap(bitmap, rect, rect, paint);

			return output;
		} else {
			return null;
		}
	}

	public static void hideSoftKeyboard(View view) {
		InputMethodManager imm = (InputMethodManager) view.getContext().getSystemService(Context.INPUT_METHOD_SERVICE);
		imm.hideSoftInputFromWindow(view.getWindowToken(), 0);
	}

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
	
	public static int dp2px(Context context, int dp) {
		return (int) TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP, dp, context.getResources().getDisplayMetrics());
	}	


}
