-dontskipnonpubliclibraryclassmembers
-dontshrink
-dontoptimize
-printmapping build/libs/output/obfuscation.map
-keepattributes !LocalVariableTable,!LocalVariableTypeTable
-adaptclassstrings
-dontnote
-dontwarn

# Keep Android classes
-keep class ** extends android.** {
    <fields>;
    <methods>;
}

# Keep serializable classes & fields
-keep class ** extends java.io.Serializable {
    <fields>;
}

# Keep - Applications. Keep all application classes, along with their 'main'
# methods.
-keepclasseswithmembers public class * {
    public static void main(java.lang.String[]);
}

# Also keep - Enumerations. Keep the special static methods that are required in
# enumeration classes.
-keepclassmembers enum  * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

# Keep names - Native method names. Keep all native class/method names.
-keepclasseswithmembers,allowshrinking class * {
    native <methods>;
}