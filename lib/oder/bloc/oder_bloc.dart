import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thecoffeehouse_api/thecoffeehouse_api.dart';
import 'package:thecoffeehouse_repository/thecoffeehouse_repository.dart';

part 'oder_event.dart';
part 'oder_state.dart';

class OderBloc extends Bloc<OderEvent, OderState> {
  final ThecoffeehouseRepository repository;
  OderBloc({required this.repository}) : super(OderState()) {
    on<OderRequested>(_onOderRequested);
    on<CategoryRequested>(_onCatedoryRequested);
  }

  FutureOr<void> _onOderRequested(
      OderRequested event, Emitter<OderState> emit) async {
    emit(OderState(status: OderStatus.loading));
    var products = await repository.getListProductFromDb();
    if (products != null && products.length > 0) {
      emit(OderState(status: OderStatus.success_menu, products: products));
    }
    products = await repository.fetchProduct();
    if (products != null && products.length > 0) {
      emit(OderState(status: OderStatus.success_menu, products: products));
    } else {
      emit(OderState(status: OderStatus.failure));
    }
  }

  FutureOr<void> _onCatedoryRequested(
      CategoryRequested event, Emitter<OderState> emit) {}
}
