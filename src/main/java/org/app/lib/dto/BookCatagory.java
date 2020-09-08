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
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "bookscatagories",uniqueConstraints = @UniqueConstraint(columnNames = {"catagory_name"}))
public class BookCatagory implements Serializable {
	
	@Id
	@GenericGenerator(name = "book_gen", strategy = "increment")
	@GeneratedValue(generator = "book_gen")
	@Column(name = "id")
	private Long id;
	@Column(name = "catagory_name")
	private String catgoryName;
	@Column(name = "since")
	private Integer sinceInvention;
	@Column(name = "description")
	private String description;
	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name = "book_genere_id")
	private List<Books> booksAre;
	
	public BookCatagory() {
		// TODO Auto-generated constructor stub
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getCatgoryName() {
		return catgoryName;
	}
	public void setCatgoryName(String catgoryName) {
		this.catgoryName = catgoryName;
	}
	public Integer getSinceInvention() {
		return sinceInvention;
	}
	public void setSinceInvention(Integer sinceInvention) {
		this.sinceInvention = sinceInvention;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public List<Books> getBooksAre() {
		return booksAre;
	}
	public void setBooksAre(List<Books> booksAre) {
		this.booksAre = booksAre;
	}
	@Override
	public String toString() {
		return "BookCatagory [id=" + id + ", catgoryName=" + catgoryName + ", sinceInvention=" + sinceInvention
				+ ", description=" + description + ", booksAre=" + booksAre + "]";
	}

	
}
