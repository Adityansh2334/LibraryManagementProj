package org.app.lib.dto;

import java.util.Random;
import java.util.PrimitiveIterator.OfInt;

import org.hibernate.Session;
import org.hibernate.tuple.ValueGenerator;



public class CustomUnameGenLibOwner implements ValueGenerator<String>{

	@Override
	public String generateValue(Session arg0, Object arg1) {
		char  ch4=(char)(int) (Math.random()*(90-65)+65);
		OfInt iterator = new Random().ints(100, 500, 1000).iterator();
		int id=0;
		while(iterator.hasNext()) {
			id=iterator.nextInt();
		}
		String ids=""+id+ch4;
		return ids;
	}

}
