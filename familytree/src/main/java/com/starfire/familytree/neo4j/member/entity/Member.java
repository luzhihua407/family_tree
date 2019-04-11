package com.starfire.familytree.neo4j.member.entity;

import java.util.HashSet;
import java.util.Set;

import org.neo4j.ogm.annotation.GeneratedValue;
import org.neo4j.ogm.annotation.Id;
import org.neo4j.ogm.annotation.NodeEntity;
import org.neo4j.ogm.annotation.Relationship;

import lombok.Data;

@NodeEntity
@Data
public class Member {

	public final static String male="男";
	public final static String female="女";
	
	@Id @GeneratedValue private Long id;

	private String name;
	private String gender;
	private int age;

	private Member() {
		// Empty constructor required as of Neo4j API 2.0.5
	};

	public Member(String name,String gender,int age) {
		this.name = name;
		this.gender = gender;
		this.age = age;
	}

	/**
	 * Neo4j doesn't REALLY have bi-directional relationships. It just means when querying
	 * to ignore the direction of the relationship.
	 * https://dzone.com/articles/modelling-data-neo4j
	 */
	@Relationship(type = "partner", direction = Relationship.UNDIRECTED)
	private Member partner;
	
	@Relationship(type = "children", direction = Relationship.UNDIRECTED)
	private Set<Member> children= new HashSet<>();



}