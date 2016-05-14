package org.AugytechSoftware.model;


	import javax.persistence.Entity;
	import javax.persistence.Id;

	import org.springframework.stereotype.Repository;

	@Repository
	@Entity
	public class Signup {

		@Id
		private String phone;
		private String email;
		private String password;

		public String getPhone() {
			return phone;
		}

		public void setPhone(String phone) {
			this.phone = phone;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}

	}


