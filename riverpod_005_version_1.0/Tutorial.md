There is no code associated with this release. This file contains a list of changes for version
v1.0.0 of Riverpod.

Take a look at this [commit](https://github.com/funwithflutter/riverpod_tutorials/commit/895614527289cb68501833a9fde3a7becbeef317) to see the changes made to the old tutorials, which have been updated to use Riverpod v1.0.0

:exclamation: __NOTE__: At the time of recording a developer version of Riverpod was used (1.0.0-dev.2).

---

# Riverpod V0.14.0

## Breaking changes

- The syntax for using `StateNotifierProvider` was updated. Before:

    ```dart
    class MyStateNotifier extends StateNotifier<MyModel> {...}

    final provider = StateNotifierProvider<MyStateNotifier>((ref) => MyStateNotifier());

    ...
    Widget build(context, watch) {
      MyStateNotifier notifier = watch(provider);
      MyModel model = watch(provider.state);
    }
    ```

    After:

    ```dart
    classMyStateNotifierextendsStateNotifier<MyModel> {...}

    final provider = StateNotifierProvider<MyStateNotifier, MyModel>>((ref) => MyStateNotifier());

    ...
    Widget build(context, watch) {
      MyStateNotifier notifier = watch(provider.notifier);
      MyModel model = watch(provider);
    }
    ```

    See also [https://github.com/rrousselGit/river_pod/issues/341](https://github.com/rrousselGit/river_pod/issues/341) for more information.

    See [https://pub.dev/packages/flutter_riverpod/changelog](https://pub.dev/packages/flutter_riverpod/changelog) for all changes.

---

# Riverpod V1.0

## Breaking changes

- `ScopedProvider` is removed. To migrate, change `ScopedProvider` to `Provider`.
- The prototype of `ConsumerWidget`'s  `build` and `Consumer`'s `builder` changed. Now they get a `WidgetRef` instead of a `ScopedReader`.

    Before:

    ```dart
    class Example extends ConsumerWidget {
      @override
      Widget build(BuildContext context, ScopedReader watch) {
        int count = watch(counterProvider);
        ...
      }
    }
    ```

    After:

    ```dart
    class Example extends ConsumerWidget {
      @override
      Widget build(BuildContext context, WidgetRef ref) {
        int count = ref.watch(counterProvider);
        ...
      }
    }
    ```

- `Family.overrideWithProvider` now must create a provider:

    ```dart
    final family = Provider.family<State, Arg>(...);

    family.overrideWithProvider(
      (Arg arg) => Provider<State>((ref) => ...)
    );
    ```

- `ProviderObserver.didUpdateProvider` now receives both the previous and new value.
- `ProviderObserver.mayHaveChanged` is removed.
- `ProviderReference.mounted` is removed. You can implement something similar using `onDispose`:

    ```dart
    Provider<T>((ref) {
      var mounted = true;
      ref.onDispose(() => mounted = false);
    });
    ```

- `ProviderContainer.debugProviderValues` and `ProviderContainer.debugProviderElements` are removed. You can now instead use `ProviderContainer.getAllProviderElements`.

---

## Deprecated

- `ProviderListener` is deprecated, instead use `ref.listen`.

    ```dart
    class Example extends ConsumerWidget {
      @override
      Widget build(BuildContext context, WidgetRef ref) {
        ref.listen<int>(counter, (count) {
          print('count changed $count');
        });
      }
    }
    ```

- `ProviderReference` is deprecated in favour of `ProviderRefBase`.

---

## New Features

- Added `ConsumerStatefulWidget` + `ConsumerState`, a variant of `StatefulWidgets` that have access to a `WidgetRef`.
- All "watch" functions now support `myProvider.select((value) => ...)`. This allows filtering rebuilds:

    ```dart
    final userProvider = StateNotifierProvider<UserController, User>(...);

    Consumer(
      builder: (context, ref, _) {
        // With this syntax, the Consumer will not rebuild if `userProvider`
        // emits a new User but its "name" didn't change.
        bool userName = ref.watch(userProvider.select((user) => user.name));
      },
    )
    ```

- Added `ref.listen`, used to listen to another provider without recreating the provider state:

    ```dart
    final counter = StateNotifierProvider<Counter, int>(...);

    final anotherProvider = Provider<T>((ref) {
      ref.listen<int>(counter, (count) {
        print('counter change: $count');
      });
    });
    ```

- All providers now receive a custom subclass of `ProviderRefBase` as parameter:

    ```dart
    Provider<T>((ProviderRef<T> ref) {...});
    FutureProvider<T>((FutureProviderRef<T> ref) {...});
    StateProvider<T>((StateProviderRef<T> ref) {...});
    ```

    That allows providers to implement features that is not shared with other providers.

    - `Provider`, `FutureProvider` and `StreamProvider's` `ref` now have a `state` property, which represents the currently exposed value. Modifying it will notify the listeners:

    ```dart
    Provider<int>((ref) {
      ref.listen(onIncrementProvider, (_) {
        ref.state++;
      });

      return 0;
    });
    ```

    - `StateProvider's` `ref` now has a `controller` property, which allows the provider to access the `StateController` exposed.
- You can now override any provider with any other provider, as long as the value that they expose matches. For example, it is possible to override a `StreamProvider<Model>` with a `Provider<AsyncValue<Model>>`.
- Added `ProviderContainer.pump`, an utility to easily "await" until providers notify their listeners or are disposed.
- All providers can now be scoped

    ---

    ## Changes

    - `StreamProvider.last`, `StreamProvider.stream` and `FutureProvider.future` now expose a future/stream that is independent from how many times the associated provider "rebuilt":
        - if a `StreamProvider` rebuilds before its stream emitted any value, `StreamProvider.last` will resolve with the first value of the new stream instead.
        - if a `FutureProvider` rebuilds before its future completes, `FutureProvider.future` will resolve with the result of the new future instead.
    - Providers can now call `ref.refresh` to refresh a provider, instead of having to do `ref.container.refresh`.
    - `ref.onDispose` now calls the dispose function as soon as one of the provider's dependency is known to have changed
    - Providers no longer wait until their next read to recompute their state if one of their dependency changed and they have listeners
