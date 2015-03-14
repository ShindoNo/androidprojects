package zing.video.downloader;

public class ZingVideoInfo {
	
	public static final String VIDEO_ID = "video_id";
	public static final String VIDEO_COVER_URL = "video_cover_url";
	public static final String VIDEO_NAME = "video_name";
	public static final String VIDEO_ARTIST = "video_artist";
	public static final String VIDEO_VIEWS = "video_views";

	String videoId;
	String videoCoverUrl;
	String videoName;
	String videoArtist;
	String videoViews;

	public String getVideoId() {
		return videoId;
	}

	public void setVideoId(String videoId) {
		this.videoId = videoId;
	}

	public String getVideoCoverUrl() {
		return videoCoverUrl;
	}

	public void setVideoCoverUrl(String videoCoverUrl) {
		this.videoCoverUrl = videoCoverUrl;
	}

	public String getVideoName() {
		return videoName;
	}

	public void setVideoName(String videoName) {
		this.videoName = videoName;
	}

	public String getVideoArtist() {
		return videoArtist;
	}

	public void setVideoArtist(String videoArtist) {
		this.videoArtist = videoArtist;
	}

	public String getVideoViews() {
		return videoViews;
	}

	public void setVideoViews(String videoView) {
		this.videoViews = videoView;
	}

}
