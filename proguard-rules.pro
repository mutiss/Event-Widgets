-optimizations !code/simplification/cast,!code/simplification/advanced,!field/*,!class/merging/*,!method/removal/parameter,!method/propagation/parameter

# Make crash call-stacks debuggable.
-keepnames class ** { *; }
-keepattributes SourceFile,LineNumberTable