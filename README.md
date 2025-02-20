# flutter_boilerplate

A Flutter Boilerplate.

## Getting Started

This repository serves as a Flutter Boilerplate, providing a starting point for Flutter applications.

A few resources to get you started:

- Dependency Management: [Riverpod](https://pub.dev/packages/riverpod)
- Database: [Isar](https://pub.dev/packages/isar)
- State Management: [Riverpod](https://pub.dev/packages/riverpod)
- Networking: [Dio](https://pub.dev/packages/dio)

## Project File Structure

The project file structure is as follows:

```
flutter_boilerplate/
|-- lib/
    |-- core
    |-- features/
        |-- auth
        |-- onboarding
        |-- profile
    |-- generated/
    |-- routing/
|-- pubspec.yaml
|-- README.md
```

The project is structured with feature-first architecture. The following directory tree provides an overview of the project features.

```plaintext
📦Feature_name
 ┣ 📂constants
 ┣ 📂helper
 ┣ 📂models
 ┣ 📂providers
 ┣ 📂repositories
 ┣ 📂services
 ┣ 📂views
```


1. constants

    It is an optional directory that can be used to create the global or feature level constants. It is generally useful in the core for declaring the global constants but it can also be used inside other root directories as per the need.

1. helper

    It is an optional directory that can be used to add business logic.

2. models

    This directory holds the classes different APIs, enums and DTOs. If there are many files and needs to be organized then it can be divided into sub-groups like dto, entities, enums and interfaces as required.

3. providers

    The providers directory may include the providers for the [Riverpod](https://pub.dev/packages/flutter_riverpod) and serves as a View-Model or State Manager or UI Controller.

4. repositories

    Repositories holds the abstract classes for the business logics and APIs. It helps to increase the testability.

5. services

    This directory contains the business logics for the application and implements the repo. It can include code for various types like handlers, helpers, implementors and utils. If there are large number of files and become difficult to manage, the files can be grouped into the sub-directories as per their types like handlers, helpers, implementors and utils. Handlers may contains logics related with the the events, exception handling, route handling etc. Helpers may contain the extensions or customization of the existing APIs. Implementors can include the implementations of the abstract classes. Utils may hold different utility functions.

    > Handlers, helpers and utils may also be placed together in the helpers directory only but implementors shall only contain the implementations of the abstract classes.

6. views

    The view directory contains the files associated with the UI or presentation layer. It can contain screens/pages, widgets/components, and scaffolds/layouts. The screens directory shall contain the UI screens that the user can view. The layout directory holds the file for the scaffolds or layout design that can be used across multiple screens. Widgets include the re-usable UI components used across the screen or layouts.
