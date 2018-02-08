-optimizations !code/simplification/cast,!code/simplification/advanced,!field/*,!class/merging/*,!method/removal/parameter,!method/propagation/parameter
-optimizationpasses 5
-allowaccessmodification
-dontpreverify
-dontusemixedcaseclassnames
-dontskipnonpubliclibraryclasses
-verbose
-ignorewarnings

-keepclassmembers class com.eventwidgets.** {
    !private <fields>;
    !public <fields>;
    <methods>;
    <init>;
}
