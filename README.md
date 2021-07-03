## A note on breaking changes and old versions of Riverpod
Riverpod and Freezed have gone through plenty of breaking changes since the publication of the first YouTube videos. Breaking changes are also likely for future versions of both packages. Updating the repository is easy, however reshooting the videos would be too time consuming. As such, there are historic branches that will reference the old code as shown in the YouTube videos. While the `main` repository will be kept up to date with the current stable versions of Riverpod and Freezed.

Updated videos will be made to discuss breaking changes and highlight what has changed. 

### Historic Branches

:exclamation: Always use the `main` branch for latest Riverpod and Freezed conventions. Use the historic branch for code reference to the old videos.

---

#### [history/001_pre-version-one](https://github.com/funwithflutter/riverpod_tutorials/tree/history/001_pre-version-one) (03/Jul/2021)

    flutter_riverpod: 0.12.1
    freezed: 0.12.6

Affected Tutorials/Videos:
- Riverpod 001 - Understanding the different notifiers
- Riverpod 002 - Reading providers best practices
- Riverpod 003 - FutureProvider, AsyncValue and Error Handling
- Riverpod 004 - Freezed: Unions and Data Classes

---

## Important

You need to run the following command in the relevant project folder to generate the platform folders (Android, iOS, Web, etc). Some of the tutorials will have these already included, if needed.

```
flutter create .
```

## Animation course by FunWithFlutter

[70% Discount](https://courses.funwith.app/p/mastering-animation-in-flutter/?product_id=1679475&coupon_code=FUN)

## Packages by FunWithFlutter

https://pub.dev/publishers/funwith.app/packages

## Flutter Riverpod tutorials

**Riverpod 001 - Understanding the different notifiers** \[ [Video](https://www.youtube.com/watch?v=ttUNVsIl1tM) \] \[ [Code](https://github.com/funwithflutter/riverpod_tutorials/tree/main/riverpod_001_counter_app_three_ways) \] - Learn how, and when, to use ChangeNotifier, ValueNotifier and StateProvider. This in introduction to Riverpod, to get your feet wet.

**Riverpod 002 - Reading providers best practices** \[ [Video](https://www.youtube.com/watch?v=EtcJsUpvZMc) \] \[ [Code](https://github.com/funwithflutter/riverpod_tutorials/tree/main/riverpod_002_reading_providers) \] - Learn about the different ways to read providers, and when to use which.

**Riverpod 003 - FutureProvider, AsyncValue and Error Handling** \[ [Video](https://www.youtube.com/watch?v=2vcjEuIkU0g) \] \[ [Code](https://github.com/funwithflutter/riverpod_tutorials/tree/main/riverpod_003_async_value) \] - Master AsyncValue and learn how to use it in combination with StateNotifier with error handling.

**Riverpod 004 - Freezed: Unions and Data Classes** \[ [Video](https://www.youtube.com/watch?v=U8_Z_O5iC8s) \] \[ [Code](https://github.com/funwithflutter/riverpod_tutorials/tree/main/riverpod_004_freezed) \] - Learn how to use Freezed and how it improves your Riverpod development workflow.

## Code Snippets

The code snippets I use in Visual Studio Code to generate Freezed classes.

`ctrl-shift-p` to bring up the command palette and search for `Preferences: Configure Code Snippets`. And add the following to that file.

``` json
{
    "Part statement": {
        "prefix": "pts",
        "body": [
            "part '${TM_FILENAME_BASE}.g.dart';",
        ],
        "description": "Creates a filled-in part statement"
    },
    "Part 'Freezed' statement": {
        "prefix": "ptf",
        "body": [
            "part '${TM_FILENAME_BASE}.freezed.dart';",
        ],
        "description": "Creates a filled-in freezed part statement"
    },
    "Freezed Data Class": {
        "prefix": "fdataclass",
        "body": [
            "@freezed",
            "abstract class ${1:DataClass} with _$${1:DataClass}{",
            "  const factory ${1:DataClass}(${2}) = _${1:DataClass};",
            "}"
        ],
        "description": "Freezed Data Class"
    },
    "Freezed Union": {
        "prefix": "funion",
        "body": [
            "@freezed",
            "abstract class ${1:Union} with _$${1:Union}{",
            "  const factory ${1:Union}.${2}(${4}) = ${3};",
            "}"
        ],
        "description": "Freezed Union"
    },
    "Freezed Union Case": {
        "prefix": "funioncase",
        "body": [
            "const factory ${1:Union}.${2}(${4}) = ${3};"
        ],
        "description": "Freezed Union Case"
    },
}
```


