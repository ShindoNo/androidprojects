package com.idroid.poke.cookie;

import android.widget.Toast;

import com.google.android.gms.games.Games;
import com.google.example.games.basegameutils.BaseGameActivity;

public class LeaderboardActivity extends BaseGameActivity {

	@Override
	public void onSignInFailed() {
		// TODO Auto-generated method stub
		Toast.makeText(this, "Sign In Failed", Toast.LENGTH_SHORT).show();
		finish();
	}

	@Override
	public void onSignInSucceeded() {
		// TODO Auto-generated method stub
//		Games.Leaderboards.submitScore(getApiClient(), getString(R.string.leaderboard_best_scores), Utils.getBestScore(this));
//		startActivityForResult(Games.Leaderboards.getLeaderboardIntent(getApiClient(), getString(R.string.leaderboard_best_scores)), 111);
//		finish();
		
		Games.Leaderboards.submitScore(getApiClient(), getString(R.string.leaderboard_easy_mode), Utils.getBestScore(this, Utils.EASY_MODE));
		Games.Leaderboards.submitScore(getApiClient(), getString(R.string.leaderboard_hard_mode), Utils.getBestScore(this, Utils.HARD_MODE));
		startActivityForResult(Games.Leaderboards.getAllLeaderboardsIntent(getApiClient()), 111);
		finish();
	}

}
