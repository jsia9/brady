## terraform

### deploy an azure static web app

Azure static web apps are a new type of web apps ; globally distributed. offers serverless APIs with Azure Functions. has builtin authentication and routing rules and TLS certificates. We can also provide a staging environment as the code the Blazor repository has an environment variable.
The workflow has two parts.
creating the static web app and then deploying the dotnet blazor application.
I have previously added the variables on the github secrets.
This terraform code deploys an azure web app called BradyWeather in the resource group brady

### Automated steps

Variables are stored in the github secrets

- create the resource group
- create the azure web app


### set the secrets

dotnet user-secrets set "Web:WeatherApi:ApiKey" "<the_accuweather_api_token>"
