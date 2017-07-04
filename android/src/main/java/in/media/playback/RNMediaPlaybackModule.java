package in.media.playback;


import android.widget.Toast;

import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.NativeModule;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.*;
import com.facebook.react.bridge.NativeModule;
import com.facebook.react.common.MapBuilder;
import com.facebook.react.bridge.Callback;
import com.facebook.react.modules.core.DeviceEventManagerModule;

import android.bluetooth.BluetoothAdapter;
import android.content.Intent;
import android.content.Context;
import android.app.AlertDialog;
import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ListView;
import android.widget.Toast;

import java.util.ArrayList;
import java.util.Set;
import java.util.Map;
import java.util.HashMap;



public class RNMediaPlaybackModule extends ReactContextBaseJavaModule {

    public void onCreate(Bundle savedInstanceState) {
    }

    public RNMediaPlaybackModule(ReactApplicationContext reactContext) {
        super(reactContext);
    }

    @Override
    public String getName() {
        return "MediaPlayback";
    }

    @ReactMethod
    public void setItem(String key, String value) {
    }

    @ReactMethod
    public void getItem(String key, Callback successCallback){
      successCallback.invoke("test hsseo!");
    }
}
