-assumenosideeffects class android.util.Log {
    public static *** d(...);
    public static *** v(...);
}
-keepnames class * implements android.os.Parcelable {
    public static final ** CREATOR;
}
-keep public class * extends android.app.Activity
-dontwarn com.google.gson.**
-dontwarn com.threatmetrix.**
-dontwarn com.google.**
-dontwarn okhttp3.**
-dontwarn okio.**
-keep class com.visa.** { *; }
-keep class com.threatmetrix.** { *; }
-keep class okio.** { *; }
-keep class okhttp3.** { *; }
-keep class com.google.gson.** { *; }
-keep class de.greenrobot.** { *; }
-keepclassmembers class * {
public void onEvent(...);
public void onEventMainThread(...);
public void onEventAsync(...);
}
-keep class sun.misc.Unsafe { *; }
-keepattributes Signature
-keepattributes Exceptions
-keepattributes *Annotation*