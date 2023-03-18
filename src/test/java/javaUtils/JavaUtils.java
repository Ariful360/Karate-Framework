package javaUtils;

import java.time.Instant;

public class JavaUtils {

	public static String getOrganizationName() {
		return "Cities";
	}
	
	public static String getDate() {
		return Instant.now().toString();
	}

}
