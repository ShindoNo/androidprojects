import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Arrays;

public class Main {

	public static Object lock = new Object();

	public static void main(String args[]) {
//		function111();
//		function222();
		
		String s = "xxx";
		
		
		Integer intObject = new Integer(10);
		int intPrimitive = 10;
		
		Object object = new Object();
		
		
		System.out.println(intObject);
		System.out.println(intPrimitive);
	}

	public static void function111() {

		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
//				synchronized (lock) {
					int count = 0;
					while (count < 5) {
						count++;
						System.out.println("function 111 count=" + count);
						try {
							Thread.sleep(1000);
						} catch (InterruptedException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					}
//				}
			}
		}).start();

	}

	public static void function222() {
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
//				synchronized (lock) {
					int count = 0;
					while (count < 5) {
						count++;
						System.out.println("function 222 count=" + count);
						try {
							Thread.sleep(1000);
						} catch (InterruptedException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					}
//				}
			}
		}).start();

	}

}
