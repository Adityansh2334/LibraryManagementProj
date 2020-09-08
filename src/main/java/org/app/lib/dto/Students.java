package org.app.lib.dto;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import org.hibernate.annotations.GeneratorType;
import org.hibernate.annotations.GenericGenerator;
@Entity
@Table(name = "students",uniqueConstraints = @UniqueConstraint(columnNames = {"generated_code"}))
public class Students implements Serializable {
	@Id
	@GenericGenerator(name = "book_random", strategy = "increment")
	@GeneratedValue(generator = "book_random")
	@Column(name = "id")
	private Long id;
	@Column(name = "first_name")
	private String firstName;
	@Column(name = "last_name")
	private String lastName;
	@GeneratorType(type = CustomGenerator.class)
	@Column(name = "generated_code")
	private String generatedcode;
	@Column(name = "contact_way")
	private String phoneOrEmail;
	@Column(name = "gender")
	private String gender;
	@Column(name = "password")
	private String password;
	@Column(name = "birthday")
	private String birthday;
	@Column(name = "registred_on_library")
	private String libraryName;
	
	public Students() {
		// TODO Auto-generated constructor stub
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getGeneratedcode() {
		return generatedcode;
	}

	public void setGeneratedcode(String generatedcode) {
		this.generatedcode = generatedcode;
	}

	public String getPhoneOrEmail() {
		return phoneOrEmail;
	}

	public void setPhoneOrEmail(String phoneOrEmail) {
		this.phoneOrEmail = phoneOrEmail;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getLibraryName() {
		return libraryName;
	}

	public void setLibraryName(String libraryName) {
		this.libraryName = libraryName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
}
