package com.ryanheise.audioserviceexample;

import android.content.Context;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import com.nt4f04und.android_content_provider.AndroidContentProvider;

import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;

public class MainActivity extends FlutterActivity {
    @Nullable
    @Override
    public FlutterEngine provideFlutterEngine(@NonNull Context context) {
        return AndroidContentProvider.Companion.getFlutterEngineGroup(this)
                .createAndRunDefaultEngine(this);
    }
}
