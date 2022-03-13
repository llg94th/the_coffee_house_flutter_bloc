import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_coffee_house/home/cubit/home_cubit.dart';
import 'package:the_coffee_house/oder/order.dart';
import 'package:the_coffee_house/store/view/store_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeCubit(),
      child: HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selectedTabs =
        context.select((HomeCubit homeCubit) => homeCubit.state.tab);
    return Scaffold(
      body: IndexedStack(
        index: selectedTabs.index,
        children: [OderPage(), StorePage()],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        key: const Key('home_page_floatingActionButton'),
        child: const Icon(Icons.add),
        onPressed: null,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _TabButton(
              icon: const Icon(Icons.shopping_cart),
              selectedTab: selectedTabs,
              value: HomeTab.oder,
            ),
            _TabButton(
              icon: const Icon(Icons.location_on),
              selectedTab: selectedTabs,
              value: HomeTab.store,
            ),
          ],
        ),
      ),
    );
  }
}

class _TabButton extends StatelessWidget {
  const _TabButton({
    Key? key,
    required this.icon,
    required this.selectedTab,
    required this.value,
  }) : super(key: key);

  final Widget icon;
  final HomeTab selectedTab;
  final HomeTab value;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => context.read<HomeCubit>().setTab(value),
      icon: icon,
      color:
          selectedTab != value ? null : Theme.of(context).colorScheme.secondary,
    );
  }
}
