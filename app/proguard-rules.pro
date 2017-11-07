# Kotlin
-dontwarn kotlin.**

-keepclassmembers class **$WhenMappings {
    <fields>;
}

# Dagger
-dontwarn com.google.errorprone.annotations.*

# EventBus
#-keepattributes *Annotation*
-keepclassmembers class ** {
    @org.greenrobot.eventbus.Subscribe <methods>;
}
-keep enum org.greenrobot.eventbus.ThreadMode { *; }

# Only required if you use AsyncExecutor
-keepclassmembers class * extends org.greenrobot.eventbus.util.ThrowableFailureEvent {
    <init>(java.lang.Throwable);
}

# General
-renamesourcefileattribute SourceFile
-keepattributes Exceptions,InnerClasses,Signature,SourceFile,LineNumberTable,*Annotation*

# AIDL
-keep class android.content.pm.IPackageStatsObserver$** {
    public <fields>;
    public <methods>;
}
-keep class android.content.pm.IPackageStatsObserver$Stub.** {
    public <fields>;
    public <methods>;
}
-keep interface android.content.pm.IPackageStatsObserver$** {*;}