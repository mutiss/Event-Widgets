# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in C:\Users\Cdorado\android-sdks/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

####################################################################################################
####################################################################################################
####################################################################################################
####################################################################################################
######################################### PROGUARD #################################################
####################################################################################################
####################################################################################################
####################################################################################################
#-optimizations !code/simplification/arithmetic,!code/simplification/cast,!field/*,!class/merging/*,!code/simplification/variable
-optimizations !code/simplification/cast,!code/simplification/advanced,!field/*,!class/merging/*,!method/removal/parameter,!method/propagation/parameter
-optimizationpasses 5
-allowaccessmodification
-dontpreverify
-dontusemixedcaseclassnames
-dontskipnonpubliclibraryclasses
-verbose
-ignorewarnings

# Optimization is turned off by default. Dex does not like code run
# through the ProGuard optimize and preverify steps (and performs some
# of these optimizations on its own).
#-dontoptimize
#-dontpreverify

-keepattributes *Annotation*, InnerClasses, Signature
#
# Note that you cannot just include these flags in your own
# configuration file; if you are including this file, optimization
# will be turned off. You'll need to either edit this file, or
# duplicate the contents of this file and remove the include of this
# file from your project's proguard.config path property.

-keep public class * extends android.app.Activity
-keep public class * extends android.app.Application
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider
-keep public class * extends android.app.backup.BackupAgent
-keep public class * extends android.preference.Preference
-keep public class * extends android.support.v4.app.Fragment
-keep public class * extends android.support.v4.app.DialogFragment
-keep public class * extends com.actionbarsherlock.app.SherlockListFragment
-keep public class * extends com.actionbarsherlock.app.SherlockFragment
-keep public class * extends com.actionbarsherlock.app.SherlockFragmentActivity
-keep public class * extends android.app.Fragment
-keep public class com.android.vending.licensing.ILicensingService

-keepclasseswithmembers class * {
    native <methods>;
    !private <fields>;
}

-keepclasseswithmembernames class * {
    native <methods>;
    !private <fields>;
}

-keepclassmembers public class * extends android.view.View {
   void set*(***);
   *** get*();
}

-keepclassmembers class * extends android.app.Activity {
   public void *(android.view.View);
}

-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

-keep class * implements android.os.Parcelable {
  public static final android.os.Parcelable$Creator *;
}

-keepclassmembers class **.R$* {
  public static <fields>;
}

-dontwarn android.support.**

########### CONFIGURACION ESPECIFICA ###########
-flattenpackagehierarchy
-repackageclasses

-keepclasseswithmembers class * {
    public <init>(android.content.Context, android.util.AttributeSet);
}
-keepclasseswithmembers class * {
    public <init>(android.content.Context, android.util.AttributeSet, int);
}

-assumenosideeffects class android.util.Log {
  public static *** d(...);
  public static *** v(...);
  public static *** i(...);
  public static *** e(...);
  public static *** w(...);
  public static *** wtf(...);
}

-keep class android.support.v4.app.** { *; }
-keep interface android.support.v4.app.** { *; }
-keep class com.actionbarsherlock.** { *; }
-keep interface com.actionbarsherlock.** { *; }
# The support library contains references to newer platform versions.
# Don't warn about those in case this app is linking against an older
# platform version. We know about them, and they are safe.
-dontwarn android.support.**
-dontwarn com.google.ads.**

-dontwarn org.apache.lang.**

#Pullparser & ksoap2
-dontwarn org.kobjects.**
-dontwarn org.ksoap2.**
-dontwarn org.kxml2.**
-dontwarn org.xmlpull.v1.**

-keep class org.kobjects.** { *; }
-keep class org.ksoap2.** { *; }
-keep class org.kxml2.** { *; }
-keep class org.xmlpull.** { *; }

#For ROME Parser
-dontwarn org.jdom.**
-keep class org.jdom.** { *; }

-dontwarn com.google.code.rome.**
-keep class com.google.code.rome.** { *; }

-keep class org.apache.xerces.parsers.SAXParser

# For squarePicasso (RoundedImage)
 -keep class com.parse.*{ *; }
 -dontwarn com.parse.**
 -dontwarn com.squareup.picasso.**

-keep class org.apache.http.**
-keep class android.net.http.**
-dontwarn com.google.android.gms.**

# Needed by google-api-client to keep generic types and @Key annotations accessed via reflection
-keepclassmembers class * {
  @com.google.api.client.util.Key <fields>;
}

-keep class com.google.api.** { *; }

-dontwarn sun.misc.Unsafe

#Apache Legacy
-keep class org.apache.http.** { *; }
-keep class org.apache.commons.codec.** { *; }
-keep class org.apache.commons.logging.** { *; }
-keep class android.net.compatibility.** { *; }
-keep class android.net.http.** { *; }
-dontwarn org.apache.http.**
-dontwarn android.webkit.**

-keep class com.android.** { *; }

#Butterknife
-keep class butterknife.** { *; }
-dontwarn butterknife.internal.**
-keep class **$$ViewBinder { *; }
-keep class **$$ViewInjector
-dontwarn butterknife.Views$InjectViewProcessor

-keepnames class * { @butterknife.Bind *;}
-keepclasseswithmembernames class * {
    @butterknife.* <fields>;
}
-keepclasseswithmembernames class * {
    @butterknife.* <methods>;
}

-keep class com.google.android.** { *; }
-dontwarn com.google.android.**

-keep class !com.milideas.vinogratis.util.** { *; }

#For Gson
-keepattributes Signature
-keep class sun.misc.Unsafe { *; }
-keep class com.milideas.vinogratis.model.** { *; }

# OrmLite uses reflection
-keep class com.j256.**
-keepclassmembers class com.j256.** { *; }
-keep enum com.j256.**
-keepclassmembers enum com.j256.** { *; }
-keep interface com.j256.**
-keepclassmembers interface com.j256.** { *; }

# Keep the helper class and its constructor
-keep class * extends com.j256.ormlite.android.apptools.OrmLiteSqliteOpenHelper
-keepclassmembers class * extends com.j256.ormlite.android.apptools.OrmLiteSqliteOpenHelper {
  public <init>(android.content.Context);
}

# Keep the annotations
-keepattributes *Annotation*

# Keep all model classes that are used by OrmLite
# Also keep their field names and the constructor
-keep @com.j256.ormlite.table.DatabaseTable class * {
    @com.j256.ormlite.field.DatabaseField <fields>;
    @com.j256.ormlite.field.ForeignCollectionField <fields>;
    # Add the ormlite field annotations that your model uses here
    <init>();
}

-dontwarn org.apache.lang.**

#Rebus PermissionUtils
-dontwarn rebus.permissionutils.**
-keep class rebus.permissionutils.**  { *; }

#Wasabeef
-keep class jp.wasabeef.** { *; }
-dontwarn jp.wasabeef.**

#Facebook
-keep class com.facebook.** { *; }
-keepattributes Signature

#Otto
-keepattributes *Annotation*
-keepclassmembers class ** {
    @com.squareup.otto.Subscribe public *;
    @com.squareup.otto.Produce public *;
}

#Retrofit
# Platform calls Class.forName on types which do not exist on Android to determine platform.
-dontnote retrofit2.Platform
# Platform used when running on RoboVM on iOS. Will not be used at runtime.
-dontnote retrofit2.Platform$IOS$MainThreadExecutor
# Platform used when running on Java 8 VMs. Will not be used at runtime.
-dontwarn retrofit2.Platform$Java8
# Retain generic type information for use by reflection by converters and adapters.
-keepattributes Signature
# Retain declared checked exceptions for use by a Proxy instance.
-keepattributes Exceptions

#Okhttp
-dontwarn com.squareup.okhttp.**
-keep class com.squareup.okhttp.* { *;}

#Jobqueue
# Priority jobqueue
-keep class com.path.android.jobqueue.** { *; }
-keep interface com.path.android.jobqueue.** { *; }

#Crashlytics
-keep class com.crashlytics.** { *; }
-dontwarn com.crashlytics.**

#Fresco
# Do not strip any method/class that is annotated with @DoNotStrip
-keep @com.facebook.common.internal.DoNotStrip class *
-keepclassmembers class * {
    @com.facebook.common.internal.DoNotStrip *;
}

# Keep native methods
-keepclassmembers class * {
    native <methods>;
}

-dontwarn okio.**
-dontwarn com.squareup.okhttp.**
-dontwarn okhttp3.**
-dontwarn javax.annotation.**
-dontwarn com.android.volley.toolbox.**
-dontwarn com.facebook.infer.**

# Braintree/PayPal
-dontwarn com.braintreepayments.**
-keep class com.braintreepayments.** { *; }
-keep interface com.braintreepayments.** { *; }
-dontwarn com.paypal.**
-keep class com.paypal.** { *; }
-keep interface com.paypal.** { *; }