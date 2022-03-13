part of 'oder_bloc.dart';

abstract class OderEvent extends Equatable {
  @override
  List<Object?> get props => [];

  const OderEvent();
}

class OderRequested extends OderEvent {
  const OderRequested();
}

class CategoryRequested extends OderEvent {
  const CategoryRequested();
}
