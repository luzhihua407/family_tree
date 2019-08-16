package com.starfire.familytree.utils;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.converter.json.Jackson2ObjectMapperBuilder;

@Slf4j
public class JacksonUtils {

	private static ObjectMapper mapper = Jackson2ObjectMapperBuilder.json().build();

	public static String toString(Object obj) {
		try {
			return mapper.writeValueAsString(obj);
		} catch (JsonProcessingException e) {
			log.error(e.getMessage());
			throw new RuntimeException(e);
		}

	}
}
