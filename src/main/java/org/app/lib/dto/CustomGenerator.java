package org.app.lib.dto;

import java.util.PrimitiveIterator.OfInt;
import java.util.Random;

import org.hibernate.Session;
import org.hibernate.tuple.ValueGenerator;

public class CustomGenerator implements ValueGenerator<String> {


	@Override
	public String generateValue(Session arg0, Object arg1) {
		char  ch1=(char)(int) (Math.random()*(90-65)+65);
		char  ch2=(char)(int) (Math.random()*(90-65)+65);
		char  ch3=(char)(int) (Math.random()*(90-65)+65);
		char  ch4=(char)(int) (Math.random()*(90-65)+65);
		OfInt iterator = new Random().ints(100, 500, 1000).iterator();
		int id=0;
		while(iterator.hasNext()) {
			id=iterator.nextInt();
		}
		String ids=""+ch1+ch2+id+ch3+ch4;
		return ids;
	}

}
