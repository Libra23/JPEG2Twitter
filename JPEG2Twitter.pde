// for twitter
import twitter4j.*;
import twitter4j.api.*;
import twitter4j.conf.*;
import twitter4j.util.*;

// for twitter
final String msg = "Automatically posted from Processing";
final String consumerKey = "your key";
final String consumerSecret = "your secret";
final String accessToken = "your token";
final String accessSecret = "your secret";
// for general
final int DISPLAY_X_PIXEL = 1920;  // pixel
final int DISPLAY_Y_PIXEL = 480;  // pixel

// for twitter
Twitter myTwitter;

void settings() {
  size(DISPLAY_X_PIXEL, DISPLAY_Y_PIXEL);
}

void setup() {
  // for twitter
  ConfigurationBuilder cb = new ConfigurationBuilder();
  cb.setOAuthConsumerKey(consumerKey);
  cb.setOAuthConsumerSecret(consumerSecret);
  cb.setOAuthAccessToken(accessToken);
  cb.setOAuthAccessTokenSecret(accessSecret);
  myTwitter = new TwitterFactory(cb.build()).getInstance();
  try {
    myTwitter.updateStatus(new StatusUpdate("Processing program twitted this picture!!.").media(new File("/Users/hiroki/Pictures/sample_pic.jpg")));
  }
  catch (TwitterException e) {
    println("Error!!");
  }
}

void draw() {
}