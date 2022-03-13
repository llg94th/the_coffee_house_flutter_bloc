part of 'oder_bloc.dart';

enum OderStatus { initial, loading, success_menu, success_cate, failure }

class OderState extends Equatable {
  final OderStatus status;
  final List<Product> products;
  final List<Category> categories;
  @override
  List<Object?> get props => [status, products, categories];

  OderState(
      {this.status = OderStatus.initial,
      this.products = const [],
      this.categories = const []});
  OderState copyWith(
      {OderStatus Function()? status,
      List<Product> Function()? products,
      List<Category> Function()? categories}) {
    return OderState(
      status: status != null ? status() : this.status,
      products: products != null ? products() : this.products,
      categories: categories != null ? categories() : this.categories,
    );
  }
}
