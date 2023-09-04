import 'package:flutter_bloc/flutter_bloc.dart';

part 'position_event.dart';
part 'position_state.dart';

class PositionBloc extends Bloc<PositionEvent, PositionState> {
  PositionBloc() : super(PositionState()) {
    on<PositionEvent>((event, emit) {
    });
  }
}
