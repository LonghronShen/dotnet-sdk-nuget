FROM microsoft/dotnet:2.1-sdk

RUN apt-get update && \
  apt-get install -y apt-transport-https dirmngr && \
  apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF && \
  echo "deb https://download.mono-project.com/repo/debian stable-stretch main" | tee /etc/apt/sources.list.d/mono-official-stable.list && \
  apt-get update && \
  apt-get install -y mono-devel mono-complete referenceassemblies-pcl ca-certificates-mono nuget && \
  rm -rf /var/lib/apt/lists/* && \
  nuget update -Self
