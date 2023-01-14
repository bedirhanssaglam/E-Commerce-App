# Shop Bag

A simple e-Commerce App with MVVM.

# Application Video

https://user-images.githubusercontent.com/105479937/212343773-43887573-0616-4180-b2b7-aefb02ca9080.mp4

# Libraries:

Initialize the Flutter project, add all the necessary dependencies mentioned above in the **pubspec.yaml** configuration file and run `pub get`.

**pubspec.yaml**
```yaml
dependencies:
  flutter:
    sdk: flutter

  cupertino_icons: ^1.0.2

  #Icon Provider
  flutter_svg: ^1.1.6

  #Responsive
  responsive_sizer: ^3.1.1

  #Extensions
  kartal: ^2.7.0

  #Design
  sensors_plus: ^2.0.1
  flutter_rating_bar: ^4.0.1
  lottie: ^2.2.0

  #JsonAnnotation
  json_annotation: ^4.7.0

  #FreezedAnnotation
  freezed_annotation: ^2.2.0

  #Network
  dio: ^4.0.6
  connectivity_plus: ^3.0.2
  
  #State Management
  mobx: ^2.1.3
  flutter_mobx: ^2.0.6+5
  mobx_codegen: ^2.1.1

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^2.0.0

  #Route Generator
  auto_route_generator: ^5.0.3

  #Code Generator
  build_runner: ^2.3.3

  #Model Files Generator
  json_serializable: ^6.5.4
  freezed: ^2.3.2

  #Application Icon
  flutter_launcher_icons: ^0.11.0
  ```

## Folders

First of all, there are two main builds in our src>lib folder. These are view and core structures.

- core: This layer is the part that will manage or initiate the work that will do our main work.

base: This layer contains our main functions and singleton files.

components: This layer contains widgets that we can use on the pages, such as button, appbar, which we can create here and customize with parameters where we want to use them.

constants: This layer consists of two structures, these structures are app and enums structures.

extensions: This layer and the project contain the basic structure, String and int.

init: This layer consists of 4 main structures. These structures are routes , network, utils, mixins and theme.

- view: This layer contains our screens. We can create a folder for each screen. There is a folder for each page in the view. The subfolders of the main page are suitable for the MVVM structure.

Finally, tests of all service methods are under the "test" folder.