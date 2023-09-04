// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'position_bloc.dart';

class PositionEvent extends Equatable {
    const PositionEvent({
    required this.x,
    required this.y,
    required this.details,
  });

  final double x;
  final double y;
  final StickDragDetails details;


  @override
  List<Object?> get props => [
        x,
        y,
      ];
}
