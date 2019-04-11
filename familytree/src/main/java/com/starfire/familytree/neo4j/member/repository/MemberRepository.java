package com.starfire.familytree.neo4j.member.repository;

import org.springframework.data.repository.CrudRepository;

import com.starfire.familytree.neo4j.member.entity.Member;

public interface MemberRepository extends CrudRepository<Member, Long> {

	Member findByName(String name);
	
}