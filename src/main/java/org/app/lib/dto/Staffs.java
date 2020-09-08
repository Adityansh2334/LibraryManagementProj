package org.app.lib.dto;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import org.hibernate.annotations.GeneratorType;
import org.hibernate.annotations.GenericGenerator;
@Entity
@Table(name = "staffs",uniqueConstraints = @UniqueConstraint(columnNames = {"staff_uname"}))
public class Staffs implements Serializable{
			 
	@Id
	@GenericGenerator(name = "staf_random", strategy = "increment")
	@GeneratedValue(generator = "staf_random")
	@Column(name = "id")
	private Long id;
	@Column(name = "staff_fname")
	private String staffFirstName;
	@Column(name = "staff_lname")
	private String staffLastname;
	@GeneratorType(type =CustomUsernameGenerator.class )
	@Column(name = "staff_uname")
	private String staffUsername;
	@GeneratorType(type = CustomGenerator.class)
	@Column(name = "staff_password")
	private String staffPassword;
	@Column(name = "staff_age")
	private Integer staffAge;
	@Column(name = "staff_salary")
	private Double staffSalary;
	@Column(name = "staff_join_date")
	private String staffJoinDate;
	@Column(name = "staff_degisnation")
	private String degisnation;
	@OneToOne(cascade = CascadeType.ALL)
	private Library library;
	
	public Staffs() {
		
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return staffFirstName+" "+staffLastname;
	}
	public void setName(String firstName, String lastName) {
		this.staffFirstName=firstName;
		this.staffLastname=lastName;
	}
	public String getStaffUsername() {
		return staffUsername;
	}
	public void setStaffUsername(String staffUsername) {
		this.staffUsername = staffUsername;
	}
	public String getStaffPassword() {
		return staffPassword;
	}
	public void setStaffPassword(String staffPassword) {
		this.staffPassword = staffPassword;
	}
	public Integer getStaffAge() {
		return staffAge;
	}
	public void setStaffAge(Integer staffAge) {
		this.staffAge = staffAge;
	}
	public Double getStaffSalary() {
		return staffSalary;
	}
	public void setStaffSalary(Double staffSalary) {
		this.staffSalary = staffSalary;
	}
	public String getStaffJoinDate() {
		return staffJoinDate;
	}
	public void setStaffJoinDate(String staffJoinDate) {
		this.staffJoinDate = staffJoinDate;
	}
	public String getDegisnation() {
		return degisnation;
	}
	public void setDegisnation(String degisnation) {
		this.degisnation = degisnation;
	}
	
}
