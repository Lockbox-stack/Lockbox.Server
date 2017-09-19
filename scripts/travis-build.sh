#!/bin/bash
dotnet build
dotnet publish --no-restore ./src/Lockbox.Server -c Release -o ./bin/Docker