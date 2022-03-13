part of 'home_cubit.dart';

enum HomeTab { oder, store }

class HomeState extends Equatable {
  const HomeState({this.tab = HomeTab.oder});

  final HomeTab tab;

  @override
  List<Object?> get props => [tab];
}
