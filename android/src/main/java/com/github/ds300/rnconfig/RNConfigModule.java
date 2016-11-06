
package com.github.ds300.rnconfig;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Callback;

public class RNConfigModule extends ReactContextBaseJavaModule {

  private final ReactApplicationContext reactContext;

  public RNConfigModule(ReactApplicationContext reactContext) {
    super(reactContext);
    this.reactContext = reactContext;
  }

  @Override
  public String getName() {
    return "RNConfig";
  }
}
