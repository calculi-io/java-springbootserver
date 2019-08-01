# SpringBoot Server

## Requirements

* Gradle 5
* OpenJDK 12

## Running the Applicaiton

```sh
gradle build
java -jar ./build/libs/SpringBootServer-1.0.1.war
```

## Partial List of Endpoints

See the controller for the full list

```sh
curl -v http://localhost:8080/employees
curl -v http://localhost:8080/employees/1
```

## Running Tests

```sh
gradle test
gradle integration-test
```
