package com.starfire.familytree;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication
//@EnableNeo4jRepositories(basePackages= {"com.starfire.familytree.neo4j.member.repository"})
@EntityScan(basePackages= {"com.starfire.familytree.neo4j.member.entity"})
public class FamilytreeApplication {

	private final static Logger log = LoggerFactory.getLogger(FamilytreeApplication.class);

	public static void main(String[] args) throws Exception {
		SpringApplication.run(FamilytreeApplication.class, args);
	}

/*	@Bean
	CommandLineRunner demo(MemberRepository personRepository) {
		return args -> {

			personRepository.deleteAll();

			Member bao = new Member("洪金宝",Member.male,60);
			Member hong = new Member("高丽虹",Member.female,59);
			Member ming = new Member("洪天明",Member.male,35);

			List<Member> team = Arrays.asList(bao, hong, ming);

			log.info("Before linking up with Neo4j...");

			team.stream().forEach(person -> log.info("\t" + person.toString()));

			bao.setPartner(hong);
			bao.getChildren().add(ming);
			personRepository.save(bao);

			log.info("Lookup each person by name...");
			team.stream().forEach(person -> log.info(
					"\t" + personRepository.findByName(person.getName()).toString()));
		};
	}*/

}
