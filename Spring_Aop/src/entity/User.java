package entity;

import lombok.Getter;
import lombok.Setter;

/**
 * 用户实体类
 * 
 * @author Administrator
 *
 **/
@Getter
@Setter
public class User {
	private Integer id;// 用户ID
	private String username;// 用户名
	private String passward;// 密码
	private String email;// 邮箱

	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", passward=" + passward + ", email=" + email + "]";
	}

}
