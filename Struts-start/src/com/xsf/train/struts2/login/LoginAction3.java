package com.xsf.train.struts2.login;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class LoginAction3 {

	private String username;
	private String password;

	public String execute() throws Exception {
		if (this.getUsername().equals("admin") && this.getPassword().equals("password")) {
			return "success";

		}
		return "error";
	}

}

