# Created with Openapi Generator

<a id="cli"></a>
## Creating the library
Create a config.yaml file similar to what is below, then run the following powershell command to generate the library `java -jar "<path>/openapi-generator/modules/openapi-generator-cli/target/openapi-generator-cli.jar" generate -c config.yaml`

```yaml
generatorName: csharp
inputSpec: openapi/chatpanel-gateway.yaml
outputDir: out

# https://openapi-generator.tech/docs/generators/csharp
additionalProperties:
  packageGuid: '{7C3A9E2B-5D41-4F8A-9B6E-2A1C4D5E6F70}'

# https://openapi-generator.tech/docs/integrations/#github-integration
# gitHost:
# gitUserId:
# gitRepoId:

# https://openapi-generator.tech/docs/globals
# globalProperties:

# https://openapi-generator.tech/docs/customization/#inline-schema-naming
# inlineSchemaOptions:

# https://openapi-generator.tech/docs/customization/#name-mapping
# modelNameMappings:
# nameMappings:

# https://openapi-generator.tech/docs/customization/#openapi-normalizer
# openapiNormalizer:

# templateDir: https://openapi-generator.tech/docs/templating/#modifying-templates

# releaseNote:
```

<a id="usage"></a>
## Using the library in your project

```cs
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.DependencyInjection;
using ChatPanel.Sdk.Api;
using ChatPanel.Sdk.Client;
using ChatPanel.Sdk.Model;
using Org.OpenAPITools.Extensions;

namespace YourProject
{
    public class Program
    {
        public static async Task Main(string[] args)
        {
            var host = CreateHostBuilder(args).Build();
            var api = host.Services.GetRequiredService<IAgentsApi>();
            IAgentsRateApiResponse apiResponse = await api.AgentsRateAsync("todo");
            Dictionary<string, Object>? model = apiResponse.Ok();
        }

        public static IHostBuilder CreateHostBuilder(string[] args) => Host.CreateDefaultBuilder(args)
          .ConfigureApi((context, options) =>
          {
              // The type of token here depends on the api security specifications
              // Available token types are ApiKeyToken, BasicToken, BearerToken, HttpSigningToken, and OAuthToken.
              BearerToken token = new("<your token>");
              options.AddTokens(token);

              // optionally choose the method the tokens will be provided with, default is RateLimitProvider
              options.UseProvider<RateLimitProvider<BearerToken>, BearerToken>();

              options.ConfigureJsonOptions((jsonOptions) =>
              {
                  // your custom converters if any
              });

              options.AddApiHttpClients(client =>
              {
                  // client configuration
              }, builder =>
              {
                  builder
                      .AddRetryPolicy(2)
                      .AddTimeoutPolicy(TimeSpan.FromSeconds(5))
                      .AddCircuitBreakerPolicy(10, TimeSpan.FromSeconds(30));
                      // add whatever middleware you prefer
                  }
              );
          });
    }
}
```
<a id="questions"></a>
## Questions

- What about HttpRequest failures and retries?
  Configure Polly in the IHttpClientBuilder
- How are tokens used?
  Tokens are provided by a TokenProvider class. The default is RateLimitProvider which will perform client side rate limiting.
  Other providers can be used with the UseProvider method.
- Does an HttpRequest throw an error when the server response is not Ok?
  It depends how you made the request. If the return type is ApiResponse<T> no error will be thrown, though the Content property will be null.
  StatusCode and ReasonPhrase will contain information about the error.
  If the return type is T, then it will throw. If the return type is TOrDefault, it will return null.
- How do I validate requests and process responses?
  Use the provided On and After partial methods in the api classes.

## Api Information
- appName: ChatPanel Gateway API
- appVersion: 0.35.0
- appDescription: The ChatPanel gateway runs on the user&#39;s machine (loopback only, port 4320 by default). It redacts personal data before a model sees it, routes model traffic, and holds the user&#39;s searchable history, durable memory, shared preferences and the team/project run boards.  **It only answers on loopback.** A client on another host cannot reach it; an SDK refuses a non-loopback base URL unless the integrator opts in and uses TLS.  **Two trust levels.** The &#x60;/v1&#x60; data plane is open to any local process — that is the product. Writes that change what every client sees (remember, forget, ingest) and anything admin-shaped require the per-install token the gateway writes to &#x60;~/.chatpanel/gateway-token&#x60; (mode 0600), or a copy obtained by pairing (&#x60;POST /pair&#x60; with a one-time code from &#x60;chatpanel-gateway pair&#x60;). &#x60;POST /whoami&#x60; says which trust you have.  **Errors** are &#x60;{ error: { message, type } }&#x60; (or &#x60;{ error: \&quot;text\&quot; }&#x60; on the oldest routes) with the HTTP status. &#x60;type&#x60; is a stable machine word: &#x60;not_found&#x60;, &#x60;invalid_request&#x60;, &#x60;unknown_endpoint&#x60;, &#x60;unavailable&#x60;, &#x60;bridge_unreachable&#x60;, &#x60;no_bridge&#x60;, &#x60;redact_error&#x60;, &#x60;search_error&#x60;, &#x60;memory_error&#x60;, &#x60;team_error&#x60;, &#x60;ingest_error&#x60;, &#x60;prefs_error&#x60;. 

## Build
This C# SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project.

- SDK version: 1.0.0
- Generator version: 7.25.0
- Build package: org.openapitools.codegen.languages.CSharpClientCodegen
