package com.study.singleton;

public class KIA {
	private int serialNum = 20210001;
	private static KIA instance = null;
	
	private KIA() {
		
	}
	
	public static KIA getInstance() {
		if(instance == null) {
			instance = new KIA();
		}
		return instance;
	}
	
	public Car createCar(String model) {
		return new Car(serialNum++, model, getClass().getSimpleName());
	}
}
