package com.idroid.flying.chicken;

import android.widget.Toast;

import com.google.android.gms.games.Games;
import com.google.example.games.basegameutils.BaseGameActivity;

public class LeaderboardActivity extends BaseGameActivity {

	@Override
	public void onSignInFailed() {
		// TODO Auto-generated method stub
		Toast.makeText(this, "onSignInFailed()", Toast.LENGTH_SHORT).show();
		finish();
	}

	@Override
	public void onSignInSucceeded() {
		// TODO Auto-generated method stub
		Games.Leaderboards.submitScore(getApiClient(), getString(R.string.leaderboard_best_scores), Utils.getBestScore(this));
		startActivityForResult(Games.Leaderboards.getLeaderboardIntent(getApiClient(), getString(R.string.leaderboard_best_scores)), 111);
		finish();
	}

}
