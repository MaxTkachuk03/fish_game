import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_joystick/flutter_joystick.dart';

part 'position_event.dart';
part 'position_state.dart';

class PositionBloc extends Bloc<PositionEvent, PositionState> {
  PositionBloc() : super(const PositionState()) {
    on<PositionEvent>((event, emit) {
      emit(state.copyWith(
        x: event.x + 20 * event.details.x,
        y: event.y + 20 * event.details.y,
      ));
    });
  }
}
