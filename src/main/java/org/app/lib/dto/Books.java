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
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import org.hibernate.annotations.GenericGenerator;
@Entity
@Table(name = "books",uniqueConstraints = @UniqueConstraint(columnNames = {"book_licenseno"}))
public class Books implements Serializable{
		
	@Id
	@GenericGenerator(name = "book_random", strategy = "increment")
	@GeneratedValue(generator = "book_random")
	@Column(name = "id")
	private Long id;
	@Column(name = "book_name")
	private String bookName;
	@Column(name = "book_author")
	private String bookAuthor;
	@Column(name = "book_price")
	private Double bookPrice;
	@Column(name = "book_licenseno")
	private String bookLicenseNo;
	@Column(name = "book_publishyear")
	private Integer bookPublishYear;
	public Books() {
		// TODO Auto-generated constructor stub
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public String getBookAuthor() {
		return bookAuthor;
	}
	public void setBookAuthor(String bookAuthor) {
		this.bookAuthor = bookAuthor;
	}
	public Double getBookPrice() {
		return bookPrice;
	}
	public void setBookPrice(Double bookPrice) {
		this.bookPrice = bookPrice;
	}
	public String getBookLicenseNo() {
		return bookLicenseNo;
	}
	public void setBookLicenseNo(String bookLicenseNo) {
		this.bookLicenseNo = bookLicenseNo;
	}
	public Integer getBookPublishYear() {
		return bookPublishYear;
	}
	public void setBookPublishYear(Integer bookPublishYear) {
		this.bookPublishYear = bookPublishYear;
	}
	@Override
	public String toString() {
		return "Books [id=" + id + ", bookName=" + bookName + ", bookAuthor=" + bookAuthor + ", bookPrice=" + bookPrice
				+ ", bookLicenseNo=" + bookLicenseNo + ", bookPublishYear=" + bookPublishYear + "]";
	}
	
	
	
}
