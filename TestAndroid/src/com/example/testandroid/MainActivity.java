package com.example.testandroid;

import java.io.IOException;

import org.jivesoftware.smack.ConnectionListener;
import org.jivesoftware.smack.SmackException;
import org.jivesoftware.smack.SmackException.NotConnectedException;
import org.jivesoftware.smack.XMPPConnection;
import org.jivesoftware.smack.ConnectionConfiguration;
import org.jivesoftware.smack.XMPPException;
import org.jivesoftware.smack.chat.Chat;
import org.jivesoftware.smack.chat.ChatManager;
import org.jivesoftware.smack.chat.ChatManagerListener;
import org.jivesoftware.smack.chat.ChatMessageListener;
import org.jivesoftware.smack.packet.Message;
import org.jivesoftware.smack.tcp.XMPPTCPConnection;
import org.jivesoftware.smack.tcp.XMPPTCPConnectionConfiguration;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;

public class MainActivity extends FragmentActivity {

	int REQUEST_CODE_VOICE = 111;
	int REQUEST_CODE_TAKE_PICTURE = 111;

	XMPPTCPConnection mConnection;

	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		
		connect();
		
		findViewById(R.id.btn_chat).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				sendMessage();
			}
		});
		
		
	}
	
	@Override
	protected void onDestroy() {
		// TODO Auto-generated method stub
		super.onDestroy();
		mConnection.disconnect();
	}
	
	public void connect() {
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				XMPPTCPConnectionConfiguration configuration = XMPPTCPConnectionConfiguration.builder()
                        .setUsernameAndPassword("test1", "123456")
                        .setServiceName("anhs-macbook-pro-2.local")
                        .setHost("192.168.65.255")
                        .setSecurityMode(ConnectionConfiguration.SecurityMode.disabled)
                        .setPort(5222)
                        .build();               
				
				mConnection = new XMPPTCPConnection(configuration);
				mConnection.addConnectionListener(mConnectionListener);
				try {
					mConnection.connect().login();
				} catch (XMPPException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (SmackException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}).start();
	}
	
	public void sendMessage() {
		try {
			ChatManager.getInstanceFor(mConnection).createChat("test5@anhs-macbook-pro-2.local").sendMessage("Hello Test 5");
		} catch (NotConnectedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void addListener() {
		ChatManager.getInstanceFor(mConnection).addChatListener(new ChatManagerListener() {
			@Override
			public void chatCreated(Chat chat, boolean createdLocally) {
				// TODO Auto-generated method stub
				Log.e("stk", "chatCreated() createdLocally=" + createdLocally);
				if (!createdLocally) {
					chat.addMessageListener(mChatMessageListener);
				}
			}
		});		
	}	
	
	ChatMessageListener mChatMessageListener = new ChatMessageListener() {
		@Override
		public void processMessage(Chat chat, Message message) {
			// TODO Auto-generated method stub
			Log.e("stk", "processMessage() message=" + message.getBody());
		}
	};
	
	
	ConnectionListener mConnectionListener = new ConnectionListener() {
        @Override
        public void connected(XMPPConnection connection) {
            Log.e("stk", "connected");
            addListener();
        }

        @Override
        public void authenticated(XMPPConnection connection, boolean resumed) {
            Log.e("stk", "authenticated");

        }

        @Override
        public void connectionClosed() {
            Log.e("stk", "connectionClosed");
        }

        @Override
        public void connectionClosedOnError(Exception e) {
            Log.e("stk", "connectionClosedOnError");
        }

        @Override
        public void reconnectionSuccessful() {
            Log.e("stk", "reconnectionSuccessful");
        }

        @Override
        public void reconnectingIn(int seconds) {
            Log.e("stk", "reconnectingIn");
        }

        @Override
        public void reconnectionFailed(Exception e) {
            Log.e("stk", "reconnectionFailed");
        }
    };
    
    

}
