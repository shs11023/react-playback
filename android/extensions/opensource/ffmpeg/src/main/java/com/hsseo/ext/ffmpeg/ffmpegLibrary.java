package com.hsseo.ext.ffmpeg;

public final class ffmpegLibrary {

  private ffmpegLibrary() {
  }

  static {
    System.loadLibrary("avutil");
    System.loadLibrary("avresample");
    System.loadLibrary("avcodec");
    System.loadLibrary("ffmpeg");
  }

  public static String getVersion() {

    return ffmpegGetVersion();
  }
  private static native String ffmpegGetVersion();
}
