part of 'advicer_bloc.dart';

@immutable
abstract class AdvicerState {}

class AdvicerInitial extends AdvicerState {}

class AdvicerStateLoading extends AdvicerState {}

class AdvicerStateLoaded extends AdvicerState {
  final String advice;
  AdvicerStateLoaded({required this.advice});

  String get getAdvice {
    return this.advice;
  }
}

class AdvicerStateError extends AdvicerState {
  final String message;

  AdvicerStateError({required this.message});
}
