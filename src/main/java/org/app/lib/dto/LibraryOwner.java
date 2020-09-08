package org.app.lib.dto;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import org.hibernate.annotations.GeneratorType;
import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "libraryowners",uniqueConstraints = @UniqueConstraint(columnNames = {"username"}))
public class LibraryOwner implements Serializable {
		
	@Id
	@GenericGenerator(name = "staf_random", strategy = "increment")
	@GeneratedValue(generator = "staf_random")
	@Column(name = "id")
	private Long id;
	@Column(name = "owner_fname")
	private String firstName;
	@Column(name = "owner_lname")
	private String lastName;
	@Column(name = "owner_age")
	private Integer age;
	@GeneratorType(type =CustomUnameGenLibOwner.class )
	@Column(name = "username")
	private String uname;
	@GeneratorType(type = CustomGenerator.class)
	@Column(name = "password")
	private String password;
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "library_id")
	private Library ownlLibrary;
	
	
	public LibraryOwner() {
		
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return firstName+" "+lastName;
	}
	public void setName(String firstname, String lastname) {
		this.firstName = firstname;
		this.lastName=lastname;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Library getOwnlLibrary() {
		return ownlLibrary;
	}
	public void setOwnlLibrary(Library ownlLibrary) {
		this.ownlLibrary = ownlLibrary;
	}
	
	
}
