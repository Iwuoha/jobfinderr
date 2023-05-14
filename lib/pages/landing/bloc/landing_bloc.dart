import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobfinderr/pages/landing/bloc/landing_event.dart';
import 'package:jobfinderr/pages/landing/bloc/landing_state.dart';

class LandingBloc extends Bloc<LandingEvent, LandingState> {
  LandingBloc() : super(LandingState()) {
    print("I am Currently running on some Giant BLOC!!! ENJOY :)");
    on<TriggerLandingEvent>((event, emit) {
      print("I got tapped and my current index is ${state.index}");
      emit(LandingState(index: state.index));
    });
  }
}
