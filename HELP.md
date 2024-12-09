# Getting Started

### Reference Documentation
For further reference, please consider the following sections:

* [Official Gradle documentation](https://docs.gradle.org)
* [Spring Boot Gradle Plugin Reference Guide](https://docs.spring.io/spring-boot/3.3.5/gradle-plugin)
* [Create an OCI image](https://docs.spring.io/spring-boot/3.3.5/gradle-plugin/packaging-oci-image.html)
* [Spring Data JPA](https://docs.spring.io/spring-boot/3.3.5/reference/data/sql.html#data.sql.jpa-and-spring-data)
* [OAuth2 Authorization Server](https://docs.spring.io/spring-boot/3.3.5/reference/web/spring-security.html#web.security.oauth2.authorization-server)

### Guides
The following guides illustrate how to use some features concretely:

* [Accessing Data with JPA](https://spring.io/guides/gs/accessing-data-jpa/)

### Additional Links
These additional references should also help you:

* [Gradle Build Scans – insights for your project's build](https://scans.gradle.com#gradle)

### Example of getting access token in to steps: 

1) Let's get authorization_code from field Location

```http://localhost:7777/oauth2/authorize?response_type=code&client_id=test-client&redirect_uri=http://localhost:5000/code```

2) I'm using Postman to get access token and simply paste it :)

```curl --location --request POST 'http://localhost:7777/oauth2/token' \```
```--header 'Authorization: Basic dGVzdC1jbGllbnQ6dGVzdC1jbGllbnQ=' \```
```--header 'Content-Type: application/x-www-form-urlencoded' \```
```--data-urlencode 'grant_type=authorization_code' \```
```--data-urlencode 'code=onMOG8b5b6_X9jlwhj37IFwsYN2dxL3q90peEgleLuzAN54hNXAT3MHXNrov3Ji5IEYP9Kihlx9e8UBZjATBF76_itD49qwb687c2SbjuF-RCiy0lxjjrn8fjhj_dQmr' \```
```--data-urlencode 'redirect_uri=http://localhost:5000/code'```

