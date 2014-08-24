package com.minggo.charmword.util;

public class Handler {
	private boolean run = true;
	public boolean postDelay(Runnable rb, long min) {
		if (run) {
			Thread th = new Thread(rb);
			try {
				Thread.sleep(min);
				th.start();
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
			
		}
		return false;
	}
	public void removeCallBack(Runnable r){
		run = false;
	}
}
