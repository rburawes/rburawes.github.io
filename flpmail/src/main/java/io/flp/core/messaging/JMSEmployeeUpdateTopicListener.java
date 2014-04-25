package io.flp.core.messaging;

import io.flp.core.email.NotificationService;

import org.springframework.beans.factory.annotation.Autowired;

public class JMSEmployeeUpdateTopicListener {
	
	@Autowired
	protected NotificationService notificationService;

    public void onMessage(Object message) {
        System.out.println("JMS message received: " + message);
        notificationService.sendMessage("rae.burawes@torocommerce.com", message.toString());
    }
}
