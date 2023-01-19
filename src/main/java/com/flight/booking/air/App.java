package com.flight.booking.air;

import org.bson.Document;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.mapreduce.MapReduceOptions;
import org.springframework.data.mongodb.core.mapreduce.MapReduceResults;
import org.springframework.stereotype.Service;

import com.mongodb.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;

@Service
public class App {
	
	@Autowired
	MongoTemplate mongoTemplate;
	
	public void mapreduce() {
		try {
			// 1. MongoDB에 연결
			MongoClient client = new MongoClient("localhost", 27017);

			// 2. shop2 DB에 연결
			MongoDatabase database = client.getDatabase("shop2");
			
			// 3. member collection에 연결
			MongoCollection<Document> collection = database.getCollection("orderss");
			System.out.println(collection);
			
			new MapReduceOptions().outputSharded(true);
			MapReduceResults<ValueObject> results = mongoTemplate.mapReduce("orderss", 
															"classpath:js/map.js",
															"classpath:js/reduce.js",
															new MapReduceOptions().outputCollection("map_reduct_spring_example"),
															ValueObject.class);

			for(ValueObject result : results) {
				System.out.println(result);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
