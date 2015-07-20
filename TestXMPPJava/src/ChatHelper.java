import java.io.IOException;
import java.util.Random;

import org.jivesoftware.smack.ConnectionConfiguration.SecurityMode;
import org.jivesoftware.smack.ConnectionListener;
import org.jivesoftware.smack.SmackException;
import org.jivesoftware.smack.XMPPConnection;
import org.jivesoftware.smack.XMPPException;
import org.jivesoftware.smack.chat.Chat;
import org.jivesoftware.smack.chat.ChatManager;
import org.jivesoftware.smack.chat.ChatManagerListener;
import org.jivesoftware.smack.chat.ChatMessageListener;
import org.jivesoftware.smack.packet.Message;
import org.jivesoftware.smack.tcp.XMPPTCPConnection;
import org.jivesoftware.smack.tcp.XMPPTCPConnectionConfiguration;


public class ChatHelper {
	
	
	XMPPTCPConnection mXmpptcpConnection;
	
	public ChatHelper() {
		// TODO Auto-generated constructor stub
	}
	
	public void login(String username, String password) {
		
		String resource = "Java_Desktop_No" + new Random().nextInt(1000);
		
		XMPPTCPConnectionConfiguration configuration = XMPPTCPConnectionConfiguration
				.builder()
				.setUsernameAndPassword(username, password)
				.setServiceName("chatzamba")
				.setHost("123.30.242.45")
				.setPort(5222)
				.setSecurityMode(SecurityMode.disabled)
				.setResource(resource)
//				.setDebuggerEnabled(true)
				.build();
		
		
		
		mXmpptcpConnection = new XMPPTCPConnection(configuration);
		mXmpptcpConnection.addConnectionListener(mConnectionListener);
		
		try {
			mXmpptcpConnection.connect().login();
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
	
	public void addChatListener() {
		System.out.println("addChatListener()");
		ChatManager.getInstanceFor(mXmpptcpConnection).addChatListener(new ChatManagerListener() {
			@Override
			public void chatCreated(Chat chat, boolean createdLocally) {
				// TODO Auto-generated method stub
				System.out.println("createdLocally=" + createdLocally);
				chat.addMessageListener(mChatMessageListener);
			}
		});
	}
	
	ConnectionListener mConnectionListener = new ConnectionListener() {
		@Override
		public void reconnectionSuccessful() {
			// TODO Auto-generated method stub
			System.out.println("reconnectionSuccessful()");
		}
		
		@Override
		public void reconnectionFailed(Exception arg0) {
			// TODO Auto-generated method stub
			System.out.println("reconnectionFailed()");
		}
		
		@Override
		public void reconnectingIn(int arg0) {
			// TODO Auto-generated method stub
			System.out.println("reconnectionreconnectingIn(xx seconds)");
		}
		
		@Override
		public void connectionClosedOnError(Exception arg0) {
			// TODO Auto-generated method stub
			System.out.println("connectionClosedOnError()");
		}
		
		@Override
		public void connectionClosed() {
			// TODO Auto-generated method stub
			System.out.println("connectionClosed()");
		}
		
		@Override
		public void connected(XMPPConnection arg0) {
			// TODO Auto-generated method stub
			System.out.println("connected()");
		}
		
		@Override
		public void authenticated(XMPPConnection arg0, boolean arg1) {
			// TODO Auto-generated method stub
			System.out.println("authenticated()");
			addChatListener();
		}
	};
	
	ChatMessageListener mChatMessageListener = new ChatMessageListener() {

		@Override
		public void processMessage(Chat chat, Message message) {
			// TODO Auto-generated method stub
			System.out.println("processMessage message=" + message.toString());
		}
		
	};
	
	

}
