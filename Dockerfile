FROM microsoft/dotnet:2.1-sdk

RUN apt-get update && \
  apt-get install -y nuget && \
  rm -rf /var/lib/apt/lists/* && \
  nuget update -Self
