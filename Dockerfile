FROM registry.access.redhat.com/redhat-openjdk-18/openjdk18-openshift

LABEL maintainer="Brent Haertlein <brent.haertlein@sinch.com>"

LABEL io.k8s.description="Platform for building and running Spring Boot Applications, utilizing gradle wrapper for builds." \
      io.k8s.display-name="Gradle Spring Boot" \
      io.openshift.expose-services="8080:http" \
      io.openshift.tags="springboot,gradle" \
      io.openshift.s2i.scripts-url="image:///usr/libexec/s2i"

USER root

COPY ./s2i/bin/ /usr/libexec/s2i

ENV GRADLE_OPTS "-Dfile.encoding=UTF-8 -Dorg.gradle.daemon=false"

USER 1001

EXPOSE 8080

CMD ["/usr/libexec/s2i/usage"]
