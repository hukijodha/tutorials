package com.baeldung.model;

import java.util.logging.Logger;

import com.baeldung.controller.IndexController;


public class User {

	private static User single_instance = null;
	private final static Logger LOGGER = Logger.getLogger(IndexController.class.getName());
	private User() {

	}

	public static User getInstance() {
		if (single_instance == null)
			single_instance = new User();
		return single_instance;
	}

	private static String status;

	public static String getStatus() {
		return status;
	}

	public static void setStatus(String status1) {
		LOGGER.info("Status has been set to:"+status1);
		status = status1;
	}

}
