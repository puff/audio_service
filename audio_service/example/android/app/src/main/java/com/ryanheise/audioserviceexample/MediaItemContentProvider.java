package com.ryanheise.audioserviceexample;

import com.nt4f04und.android_content_provider.AndroidContentProvider;

import org.jetbrains.annotations.NotNull;

public class MediaItemContentProvider extends AndroidContentProvider {
    @NotNull
    @Override
    public String getAuthority() {
        return "com.ryanheise.audioserviceexample.MediaItemContentProvider";
    }

    @NotNull
    @Override
    public String getEntrypointName() {
        return "mediaItemContentProviderEntrypoint";
    }
}
