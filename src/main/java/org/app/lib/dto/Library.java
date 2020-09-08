package org.app.lib.dto;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
@Entity
@Table(name = "libraries")
public class Library implements Serializable{
	
	@Id
	@GenericGenerator(name = "lib_random", strategy = "increment")
	@GeneratedValue(generator = "lib_random")
	@Column(name = "id")
	private Long id;
	@Column(name = "library_name")
	private String libName;
	@Column(name = "library_addresss")
	private String libAddress;
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "owner_id")
	private LibraryOwner libOwner;
	@Column(name = "library_established")
	private Integer establishedIn;
	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name = "library_id")
	private List<BookCatagory> books;
	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name = "library_id")
	private List<Staffs> staffs;
	
	public Library() {
		// TODO Auto-generated constructor stub
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getLibName() {
		return libName;
	}
	public void setLibName(String libName) {
		this.libName = libName;
	}
	public String getLibAddress() {
		return libAddress;
	}
	public void setLibAddress(String libAddress) {
		this.libAddress = libAddress;
	}
	public LibraryOwner getLibOwnerName() {
		return libOwner;
	}
	public void setLibOwnerName(LibraryOwner libOwnerName) {
		this.libOwner = libOwnerName;
	}
	public List<BookCatagory> getBookCatagory() {
		return books;
	}
	public void setBookCatagory(List<BookCatagory> book) {
		this.books = book;
	}
	public List<Staffs> getStaffs() {
		return staffs;
	}
	public void setStaffs(List<Staffs> staffs) {
		this.staffs = staffs;
	}
	public Integer getEstablishedIn() {
		return establishedIn;
	}
	public void setEstablishedIn(Integer establishedIn) {
		this.establishedIn = establishedIn;
	}
	@Override
	public String toString() {
		return "Library [id=" + id + ", libName=" + libName + ", libAddress=" + libAddress + ", libOwner=" + libOwner
				+ ", establishedIn=" + establishedIn + ", books=" + books + ", staffs=" + staffs + "]";
	}
	
	
}
