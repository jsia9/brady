## terraform
### URL

https://bradyweatherjml.azurewebsites.net

### deploy an azure static web app

Azure static web apps are a new type of web apps ; globally distributed. offers serverless APIs with Azure Functions. has builtin authentication and routing rules and TLS certificates. We can also provide a staging environment as the code the Blazor repository has an environment variable.
The workflow has 3 parts. (in .github/workflows/azure-webapps-dotnet-core.yml)
creating the static web app in azure ; build and then deploying the dotnet blazor application.
I have previously added the variables on the github secrets.
This terraform code deploys an azure web app called BradyWeather in the resource group brady

###

### Automated steps in Azure

Variables are stored in the github secrets

done in the terraform folder:
- create the resource group
- create the azure web app

build and deploy steps are done in the workflow 


### set the secrets
TODO: use the secrets for the accuweather
dotnet user-secrets set "Web:WeatherApi:ApiKey" "<the_accuweather_api_token>"

### Dotnet

TODO :
understand how Dotnet deploys the app which can run locally by
```
cd Src/Presentation/BradyWeather.Blazor.Server
dotnet watch run
```
Prereq:
install dotnet 3.1 locally.
