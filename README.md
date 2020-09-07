# Bloc pattern and cubic example in Flutter

Code examples and explanations taken from <https://bloclibrary.dev/#/gettingstarted> to understand de functionality of bloc pattern and the difference between using bloc or cubic.

<p align="center">
<img src="assets/readme/screen-shots.PNG" title="Screen Shots">
</p>

The examples are:

- A counter <https://bloclibrary.dev/#/fluttercountertutorial> builded using cubit.

- A timer <https://bloclibrary.dev/#/fluttertimertutorial> builded using Bloc.

## Why use Bloc Pattern

Bloc makes it easy to separate presentation from business logic. It gives us the following advantages:

- know what state our application is in at any point in time. Easily test every case to make sure our app is responding appropriately.

- record every single user interaction in our application so that we can make data-driven decisions.

- work as efficiently as possible and reuse components both within our application and across other applications.

- have many developers seamlessly working within a single code base following the same patterns and conventions.

- develop fast and reactive apps.

## Cubit

A Cubit is special type of Stream which is used as the base for the Bloc class.

A Cubit can expose functions which can be invoked to trigger state changes.

States are the output of a Cubit and represent a part of your application's state. UI components can be notified of states and redraw portions of themselves based on the current state.

In this link, the author explains with details why he decided to merge Cubit with the Bloc Library <https://github.com/felangel/cubit/issues/69>

## Bloc

A Bloc is a special type of Cubit which transforms incoming events into outgoing states.

Creating a Bloc is similar to creating a Cubit except in addition to defining the state that we'll be managing, we must also define the event that the Bloc will be able to process.

## Key differences between Cubit and Bloc

Taken from <https://github.com/felangel/bloc/issues/1444>

1- Is cubit just designed to offer the syntax sugar or reduce the code size/complexity?

   Cubit is a subset of Bloc so it reduces complexity but you also lose some functionality.

2- Does cubit be capable to do all things that bloc can do?

   No, since Cubit has no notion of events, things like debounce, switchMap, throttle, etc... will not be as easy to support with Cubit and you'd be better off using Bloc.

3- If the cubit is functionally the same to the bloc and just optimized/simplified  structure of bloc, will this be a trend of bloc further development? (should we more prefer to use cubit rather than bloc since it is a kind of evolve of bloc)

   Like I mentioned, Cubit is a subset of Bloc (Bloc extends Cubit) so you can think of Cubit as a simplified Bloc which has less functionality. Blocs are more powerful than Cubits but Cubits are more simple.
