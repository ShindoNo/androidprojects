package info.nkl.animation;

import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.Transformation;
import android.widget.LinearLayout.LayoutParams;

public class ExpandAnimation extends Animation{
	View view;
	LayoutParams layoutParams;
	
	boolean expand;
	int startMargin, endMargin;
	
	public ExpandAnimation(View v, boolean e, int duration) {
		// TODO Auto-generated constructor stub
		view = v;
		expand = e;
		setDuration(duration);
		
		layoutParams = (LayoutParams) v.getLayoutParams();
		
		if (expand) {
			startMargin = - view.getHeight();
			endMargin = 0;
		} else {
			startMargin = 0;
			endMargin = - view.getHeight();
		}
		
		view.setVisibility(View.VISIBLE);
	}
	
	@Override
	protected void applyTransformation(float interpolatedTime, Transformation t) {
		// TODO Auto-generated method stub
		if (interpolatedTime == 0 && expand) {
			startMargin = - view.getHeight();
		}
		
		layoutParams.bottomMargin = startMargin + (int)((endMargin - startMargin) * interpolatedTime);
		view.requestLayout();
		
		if(interpolatedTime == 1) {
			if (!expand)
				view.setVisibility(View.GONE);
		}
	}
	
	/**
	 * Retrun intance of expand animation
	 * @param v view using animation
	 * @param e true if expand, false if collapse
	 * @param duration time of animation
	 * @return
	 */
	public static AnimationSet getInstance(View v, boolean e, int duration) {
		ExpandAnimation expandAnimation = new ExpandAnimation(v, e, duration);
		AlphaAnimation alphaAnimation;
		if (e) alphaAnimation = new AlphaAnimation(0, 1.0f);
		else alphaAnimation = new AlphaAnimation(1.0f, 0);
		alphaAnimation.setDuration(duration);
		
		AnimationSet set = new AnimationSet(false);
		set.addAnimation(expandAnimation);
		set.addAnimation(alphaAnimation);
		
		return set;
	}
	
//	public static void expand(View v, boolean e, int duration) {
//		ExpandAnimation expandAnimation = new ExpandAnimation(v, e, duration);
//		AlphaAnimation alphaAnimation;
//		if (e) alphaAnimation = new AlphaAnimation(0, 1.0f);
//		else alphaAnimation = new AlphaAnimation(1.0f, 0);
//		alphaAnimation.setDuration(duration);
//		
//		AnimationSet set = new AnimationSet(false);
//		set.addAnimation(expandAnimation);
//		set.addAnimation(alphaAnimation);
//		
//		v.startAnimation(set);
//	}

}
