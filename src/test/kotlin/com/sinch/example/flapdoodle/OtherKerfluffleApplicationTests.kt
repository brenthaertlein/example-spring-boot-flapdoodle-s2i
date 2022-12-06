package com.sinch.example.flapdoodle

import mu.KLogging
import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.context.SpringBootTest
import org.springframework.data.mongodb.core.MongoOperations

@SpringBootTest
class OtherKerfluffleApplicationTests(@Autowired val mongoOperations: MongoOperations) {

    @Test
    fun `this test will pass`() {
        logger.info { "This test passed" }
    }

    companion object: KLogging()
}
