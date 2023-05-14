import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobfinderr/introduction/bloc/introduction_event.dart';
import 'package:jobfinderr/introduction/bloc/introduction_state.dart';

class IntroductionBloc extends Bloc<IntroductionEvent, IntroductionState> {
  IntroductionBloc() : super(IntroductionState()) {
    print("I HAVE ENTERED!!!!");
    on<LookingEvent>(_lookingEvent);
    //(event, emit) {
    //       emit(state.copyWith(looking: event.looking));
    //     }
    on<OpenEvent>(_openEvent);
    //(event, emit) {
    //       emit(state.copyWith(open: event.open));
    //     }
  }

  void _lookingEvent(LookingEvent event, Emitter<IntroductionState> emit) {
    print("I am looking for ${event.looking}");
    emit(state.copyWith(looking: event.looking));
  }

  void _openEvent(OpenEvent event, Emitter<IntroductionState> emit) {
    print("my Looking is ${event.open}");
    emit(state.copyWith(open: event.open));
  }
}
