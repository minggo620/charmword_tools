package com.minggo.charmword.http;

public interface HttpListener {
	public void onResult(String result);
	public void onError(String error);
}
