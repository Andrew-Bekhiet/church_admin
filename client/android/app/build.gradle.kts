import java.io.FileInputStream
import java.util.Properties
import org.jetbrains.kotlin.gradle.dsl.JvmTarget

plugins {
    id("com.android.application")
    id("kotlin-android")
    id("com.google.gms.google-services")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}
dependencies {
    coreLibraryDesugaring("com.android.tools:desugar_jdk_libs:2.1.5")
}


android {
    namespace = "com.AndroidQuartz.church_admin"
    compileSdk = 36
    ndkVersion = "28.2.13676358"

    compileOptions {
        isCoreLibraryDesugaringEnabled = true
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    defaultConfig {
        applicationId = "com.AndroidQuartz.church_admin"
        minSdk = 24
        targetSdk = 36
        versionCode = flutter.versionCode
        versionName = flutter.versionName
        multiDexEnabled = true
        ndk {
            abiFilters += listOf("armeabi-v7a", "arm64-v8a")
        }
    }

    signingConfigs {
        create("release") {
            val releaseKey = Properties()
            val keystorePropertiesFile = rootProject.file("releaseKey.properties")
            if (keystorePropertiesFile.exists()) {
                releaseKey.load(FileInputStream(keystorePropertiesFile))
            }

            keyAlias = releaseKey.getProperty("keyAlias")
            keyPassword = releaseKey.getProperty("keyPassword")
            storeFile = releaseKey.getProperty("storeFile")?.let { file(it) }
            storePassword = releaseKey.getProperty("storePassword")
        }
        named("debug") {
            val debugKey = Properties()
            val dKeystorePropertiesFile = rootProject.file("debugKey.properties")
            if (dKeystorePropertiesFile.exists()) {
                debugKey.load(FileInputStream(dKeystorePropertiesFile))
            }

            keyAlias = debugKey.getProperty("keyAlias")
            keyPassword = debugKey.getProperty("keyPassword")
            storeFile = debugKey.getProperty("storeFile")?.let { file(it) }
            storePassword = debugKey.getProperty("storePassword")
        }
    }
    buildTypes {
        named("debug") {
            signingConfig = signingConfigs.getByName("debug")
            ndk {
                abiFilters += listOf("armeabi-v7a", "arm64-v8a", "x86_64")
            }
        }
        named("profile") {
            signingConfig = signingConfigs.getByName("debug")
            isMinifyEnabled = true
            isShrinkResources = true
            proguardFiles(getDefaultProguardFile("proguard-android-optimize.txt"), "proguard-rules.pro")
        }
        named("release") {
            signingConfig = signingConfigs.getByName("release")
            isMinifyEnabled = true
            isShrinkResources = true
            proguardFiles(getDefaultProguardFile("proguard-android-optimize.txt"), "proguard-rules.pro")
        }
    }
}

kotlin {
    compilerOptions {
        jvmTarget.set(JvmTarget.JVM_17)
    }
}

flutter {
    source = "../.."
}
