import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_coffee_house/oder/bloc/oder_bloc.dart';
import 'package:the_coffee_house/oder/view/item_product.dart';
import 'package:thecoffeehouse_repository/thecoffeehouse_repository.dart';

class OderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The coffee house'),
      ),
      body: BlocProvider(
        child: OderView(),
        create: (_) =>
            OderBloc(repository: context.read<ThecoffeehouseRepository>()),
      ),
    );
  }

  const OderPage();
}

class OderView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    context.read<OderBloc>().add(OderRequested());
    return Center(
      child: BlocBuilder<OderBloc, OderState>(builder: (context, state) {
        switch (state.status) {
          case OderStatus.initial:
            return CircularProgressIndicator();
            // TODO: Handle this case.
            break;
          case OderStatus.success_menu:
            var products = state.products;
            return ListView(
              children: products.map((e) => ItemProduct(product: e)).toList(),
            );
            return ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) =>
                    ItemProduct(product: products[index])).build(context);
            break;
          case OderStatus.success_cate:
            return CircularProgressIndicator();
            // TODO: Handle this case.
            break;
          case OderStatus.failure:
            return CircularProgressIndicator();
            // TODO: Handle this case.
            break;
          case OderStatus.loading:
            return CircularProgressIndicator();
            break;
        }
      }),
    );
  }
}
