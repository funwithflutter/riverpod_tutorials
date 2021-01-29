# Riverpod #004 - Freezed: Unions and Data Classes
Learn how to use Freezed and how it improves your Riverpod development workflow with Data Classes and Unions.

See the video tutorial down below:

[![IMAGE ALT TEXT HERE](https://img.youtube.com/vi/U8_Z_O5iC8s/0.jpg)](https://www.youtube.com/watch?v=U8_Z_O5iC8s)

Direct link: https://www.youtube.com/watch?v=U8_Z_O5iC8s

## Important

You need to run the following command to generate the platform folders (Android, iOS, Web, etc).

```
flutter create .
```

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
