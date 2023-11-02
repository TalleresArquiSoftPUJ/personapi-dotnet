# Establecer la imagen base de Windows
FROM mcr.microsoft.com/dotnet/aspnet:6.0-windowsservercore-ltsc2022 AS base
WORKDIR /app
EXPOSE 80

# Establecer la imagen de SDK de Windows para compilar la aplicación
FROM mcr.microsoft.com/dotnet/sdk:6.0-windowsservercore-ltsc2022 AS build
WORKDIR /src
COPY ["personapi-dotnet.csproj", "personapi-dotnet/"]
RUN dotnet restore "personapi-dotnet.csproj"
COPY . .
WORKDIR "/src/personapi-dotnet"
RUN dotnet build "personapi-dotnet.csproj" -c Release -o /app/build

# Publicar la aplicación
FROM build AS publish
RUN dotnet publish "personapi-dotnet.csproj" -c Release -o /app/publish

# Crear una imagen final del contenedor
FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "personapi-dotnet.dll"]
