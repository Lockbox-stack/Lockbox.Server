FROM microsoft/dotnet:latest
COPY . /app
WORKDIR /app
 
RUN ["dotnet", "restore", "--source", "https://api.nuget.org/v3/index.json", "--no-cache"]
RUN ["dotnet", "build"]
 
EXPOSE 5000/tcp
ENV ASPNETCORE_URLS http://*:5000
ENV ASPNETCORE_ENVIRONMENT local
ENV LOCKBOX_ENCRYPTION_KEY 48q2Xc9FBEUExnrpYSMx
ENV LOCKBOX_SECRET_KEY j7ahgRF8fcYNgGwb4tEGLu4NYZTfD
ENV LOCKBOX_MONGO_CONNECTION_STRING mongodb://localhost:27017
ENV LOCKBOX_MONGO_DATABASE Lockbox
 
ENTRYPOINT ["dotnet", "run"]
