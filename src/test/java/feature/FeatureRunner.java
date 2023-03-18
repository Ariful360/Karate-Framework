package feature;

import com.intuit.karate.junit5.Karate;
public class FeatureRunner {
	
	@Karate.Test
	Karate test() {
		
		return Karate
				.run("postCalls.feature")
				.tags("@json-payload")
				.relativeTo(getClass());
	}

}
