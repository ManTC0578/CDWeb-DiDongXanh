package com.cdweb.didongxanh.Controller.Admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexAdminController {

	@RequestMapping("/admin/dashboard")
	public String adminDashboard() {
		return"admin/dashboard";
	}
}
