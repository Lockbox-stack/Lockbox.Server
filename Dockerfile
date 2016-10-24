FROM microsoft/dotnet:latest
COPY . /app
WORKDIR /app
 
RUN ["dotnet", "restore", "--source", "https://api.nuget.org/v3/index.json", "--no-cache"]
RUN ["dotnet", "build"]
 
EXPOSE 5000/tcp
ENV ASPNETCORE_URLS http://*:5000
ENV ASPNETCORE_ENVIRONMENT local
ENV LOCKBOX_ENCRYPTION_KEY
ENV LOCKBOX_SECRET_KEY
ENV LOCKBOX_MONGO_CONNECTION_STRING
ENV LOCKBOX_MONGO_DATABASE
 
ENTRYPOINT ["dotnet", "run"]
