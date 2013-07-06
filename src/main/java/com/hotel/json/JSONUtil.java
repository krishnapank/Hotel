package com.hotel.json;

import java.io.IOException;
import java.util.List;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

// TODO: Auto-generated Javadoc
/**
 * JSONUtil
 * <p>
 * Per Jackson best practices, it's more efficient to reuse the same objectMapper than to create new.  ObjectMapper operations are thread-safe, but configuration is not.
 * </p>
 * @author Tacpoint Technologies
 *
 */
@Component("jsonUtil")
public final class JSONUtil {
	
	/** The object mapper. */
	private static ObjectMapper objectMapper = new ObjectMapper();;
	static {
		objectMapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
	}
	
	/**
	 * Write json string.
	 *
	 * @param object the object
	 * @return the string
	 * @throws JsonGenerationException the json generation exception
	 * @throws JsonMappingException the json mapping exception
	 * @throws IOException Signals that an I/O exception has occurred.
	 */
	public String writeJsonString(Object object) throws JsonGenerationException, JsonMappingException, IOException {
		return objectMapper.writeValueAsString(object);
	}
	
	/**
	 * Gets the objects from json.
	 *
	 * @param jsonString the json string
	 * @param ref the ref
	 * @return the objects from json
	 * @throws JsonParseException the json parse exception
	 * @throws JsonMappingException the json mapping exception
	 * @throws IOException Signals that an I/O exception has occurred.
	 */
	@SuppressWarnings("rawtypes")
	public List getObjectsFromJson(String jsonString,TypeReference ref) throws JsonParseException, JsonMappingException, IOException
	{
		return objectMapper.readValue(jsonString,ref);
	}
}
