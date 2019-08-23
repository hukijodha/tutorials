package com.baeldung.controller;

import java.util.logging.Logger;

import org.springframework.mobile.device.Device;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.baeldung.model.User;

@Controller
public class IndexController {

	private final static Logger LOGGER = Logger.getLogger(IndexController.class.getName());

	@GetMapping("/")
	public String greeting(User user,Device device,Model model) {

		String deviceType = "browser";
		String platform = "browser";

		if (device.isNormal()) {
			deviceType = "browser";
		} else if (device.isMobile()) {
			deviceType = "mobile";
		} else if (device.isTablet()) {
			deviceType = "tablet";
		}

		platform = device.getDevicePlatform().name();

		if (platform.equalsIgnoreCase("UNKNOWN")) {
			platform = "browser";
		}
		model.addAttribute("user", user);
		return "index";
	}
	
	 @PostMapping("/")
	    public String formPost(User user, Model model) {
	     model.addAttribute("user", user);
	   
	     return "index";
	    }

}
