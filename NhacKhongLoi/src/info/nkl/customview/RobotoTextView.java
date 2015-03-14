package info.nkl.customview;

import info.nkl.alpha.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.widget.TextView;

public class RobotoTextView extends TextView{
	public static final String FONT_REGULAR = "fonts/Roboto-Regular.ttf"; // 0x01
	public static final String FONT_BOLD = "fonts/Roboto-Bold.ttf";		  // 0x02
	public static final String FONT_ITALIC = "fonts/Roboto-Italic.ttf";   // 0x03
	
	
	public RobotoTextView(Context context) {
		super(context);
		// TODO Auto-generated constructor stub
		init(0);
	}

	public RobotoTextView(Context context, AttributeSet attrs) {
		super(context, attrs);
		// TODO Auto-generated constructor stub
		
		TypedArray typedArray = context.getTheme().obtainStyledAttributes(attrs, R.styleable.RobotoTextView, 0, 0);
		init(typedArray.getInt(R.styleable.RobotoTextView_roboto_style, 0));
	}
	
	public void init(int font) {
		String fontStyle = FONT_REGULAR;
		if (font == 0) fontStyle = FONT_REGULAR;
		else if (font == 1) fontStyle = FONT_BOLD;
		else if (font == 2) fontStyle = FONT_ITALIC;
		
		if (!isInEditMode()) {
			Typeface tf = Typeface.createFromAsset(getContext().getAssets(), fontStyle);
			setTypeface(tf);
		}
	}	
	
}
