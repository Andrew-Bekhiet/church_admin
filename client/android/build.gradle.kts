allprojects {
    repositories {
        google()
        mavenCentral()
    }
    // posthog_flutter asks for posthog-android [3.71.0,4.0.0); pin what release 2.21.0+57 shipped so Shorebird patches have no native diff.
    configurations.all {
        resolutionStrategy.force(
            "com.posthog:posthog-android:3.72.6",
            "com.posthog:posthog:6.47.3",
        )
    }
}

val newBuildDir: Directory =
    rootProject.layout.buildDirectory
        .dir("../../build")
        .get()
rootProject.layout.buildDirectory.value(newBuildDir)

subprojects {
    val newSubprojectBuildDir: Directory = newBuildDir.dir(project.name)
    project.layout.buildDirectory.value(newSubprojectBuildDir)
}
subprojects {
    project.evaluationDependsOn(":app")
}

tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}
