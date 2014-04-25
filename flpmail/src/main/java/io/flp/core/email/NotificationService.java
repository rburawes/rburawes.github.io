package io.flp.core.email;


public interface NotificationService {
	
	public void sendMessage(String mailTo, String message);
}
