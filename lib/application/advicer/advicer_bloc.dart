import 'package:advicer/domain/entities/advice_Entity.dart';
import 'package:advicer/domain/failures/failures.dart';
import 'package:advicer/domain/usecases/advicer_usecases.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

part 'advicer_event.dart';
part 'advicer_state.dart';

class AdvicerBloc extends Bloc<AdvicerEvent, AdvicerState> {
  final AdvicerUsecases usecases = AdvicerUsecases();

  AdvicerBloc() : super(AdvicerInitial()) {
    on<AdvicerEvent>((event, emit) async {
      if (event is AdvicerRequestedEvent) {
        emit(AdvicerStateLoading());
        // do something
        Either<Failure, AdviceEntity> adviceOrFailure =
            await usecases.getAdviceUsecases(); // fake network request

        adviceOrFailure.fold(
            (failure) =>
                emit(AdvicerStateError(message: _mapFailureToMessage(failure))),
            (advice) => emit(AdvicerStateLoaded(advice: advice.advice)));
        // get advice
      } else if (event is ExampleEvent) {}
    });
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return 'Ups, API Error, please try again';
      case GeneralFailure:
        return 'Ups, something went wrong, please try again';
      default:
        return 'Ups, something went wrong, please try again';
    }
  }
}
