package com.cheese.ssh.beans;
// Generated 2016-5-29 18:51:25 by Hibernate Tools 4.3.1.Final

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Task generated by hbm2java
 */
@Entity
@Table(name = "task", catalog = "dhucheese")
public class Task implements java.io.Serializable {

	private Integer id;
	private String taskName;
	private Integer type;
	private String description;
	private Integer price;
	private Date deadline;
	private Date rel;
	private Integer author;
	private String image;
	private Integer status;
	private String authorName;

	public Task() {
	}

	public Task(String taskName, Integer type, String description, Integer price, Date deadline, Date rel,
			Integer author, String image, Integer status, String authorName) {
		this.taskName = taskName;
		this.type = type;
		this.description = description;
		this.price = price;
		this.deadline = deadline;
		this.rel = rel;
		this.author = author;
		this.image = image;
		this.status = status;
		this.authorName = authorName;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "taskName")
	public String getTaskName() {
		return this.taskName;
	}

	public void setTaskName(String taskName) {
		this.taskName = taskName;
	}

	@Column(name = "type")
	public Integer getType() {
		return this.type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	@Column(name = "description")
	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Column(name = "price")
	public Integer getPrice() {
		return this.price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "deadline", length = 19)
	public Date getDeadline() {
		return this.deadline;
	}

	public void setDeadline(Date deadline) {
		this.deadline = deadline;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "rel", length = 19)
	public Date getRel() {
		return this.rel;
	}

	public void setRel(Date rel) {
		this.rel = rel;
	}

	@Column(name = "author")
	public Integer getAuthor() {
		return this.author;
	}

	public void setAuthor(Integer author) {
		this.author = author;
	}

	@Column(name = "image")
	public String getImage() {
		return this.image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	@Column(name = "status")
	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	@Column(name = "authorName")
	public String getAuthorName() {
		return this.authorName;
	}

	public void setAuthorName(String authorName) {
		this.authorName = authorName;
	}

}
