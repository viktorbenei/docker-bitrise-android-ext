FROM bitriseio/docker-android:latest

# Other tools and resources of Android SDK
#  you should only install the packages you need!
# To get a full list of available options you can use:
#  android list sdk --no-ui --all --extended
RUN echo y | android update sdk --no-ui --all --force --filter \
  platform-tools,extra-android-support
# build tools
RUN echo y | android update sdk --no-ui --all --force --filter \
  build-tools-20.1.0
# SDKs
RUN echo y | android update sdk --no-ui --all --force --filter \
  android-20

CMD bitrise -version
