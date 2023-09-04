// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'position_bloc.dart';

class PositionState extends Equatable {
  const PositionState( {
    this.x = 150,
    this.y = 150,
    this.details,
  });

  final double x;
  final double y;
  final StickDragDetails? details;

  @override
  List<Object?> get props => [
        x,
        y,
      ];



  PositionState copyWith({
    double? x,
    double? y,
    StickDragDetails? details,
  }) {
    return PositionState(
      x: x ?? this.x,
      y: y ?? this.y,
      details: details ?? this.details,
    );
  }
}
