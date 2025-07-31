#!/usr/bin/env sh

##############################################################################
##
##  Gradle start up script for UN*X
##
##############################################################################

# Set default JAVA_HOME if not set
if [ -z "$JAVA_HOME" ]; then
  JAVA_HOME=$(dirname $(dirname $(readlink -f $(which javac))))
fi

# Find gradle wrapper jar
GRADLE_WRAPPER_JAR="./gradle/wrapper/gradle-wrapper.jar"

# Set JVM options if needed
JAVA_OPTS="${JAVA_OPTS} -Xmx64m"

# Run the wrapper
exec "$JAVA_HOME/bin/java" $JAVA_OPTS -cp "$GRADLE_WRAPPER_JAR" org.gradle.wrapper.GradleWrapperMain "$@"
