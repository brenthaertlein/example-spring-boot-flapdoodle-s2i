package com.sinch.example.flapdoodle

import mu.KLogging
import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.context.SpringBootTest
import org.springframework.data.mongodb.core.MongoOperations

@SpringBootTest
class KerfluffleApplicationTests(@Autowired val mongoOperations: MongoOperations) {

	@Test
	fun `this test won't run`() {
		logger.info { "This didn't run" }
	}

	companion object: KLogging()
}
