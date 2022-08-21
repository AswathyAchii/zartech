import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zartech/core/colors.dart';
import 'package:zartech/router/router.dart';
import 'package:zartech/screens/home/application/home_bloc.dart';
import 'package:zartech/widgets/dishes_widget.dart';

import 'package:zartech/widgets/loading/loading.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        state.saveFailureOrSuccessOption.fold(
            () => {},
            (a) => {
                  a.fold(
                    (l) => () {},
                    (r) => () {},
                  )
                });
        Widget? showWidget = Loading();
        if (state.isLoading == true) {
          showWidget = Loading();
        } else {
          showWidget = tabs(state, context);
        }
        return showWidget;
      },
    );
  }

  DefaultTabController tabs(HomeState state, BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: state.length,
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.menu,
                color: normalBlack,
                size: 25,
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(
                  left: 10,
                  right: 15,
                ),
                child: GestureDetector(
                  onTap: () {
                    context.router.push(CartRoute());
                  },
                  child: Icon(
                    Icons.shopping_cart,
                    color: normalBlack,
                    size: 25,
                  ),
                ),
              )
            ],
            bottom: TabBar(
              onTap: ((value) {
                context.read<HomeBloc>().add(HomeEvent.getCurrentTabIndex(
                    currenMenuCategorytIndex: value));
              }),
              unselectedLabelColor: normalBlack,
              labelColor: Colors.red,
              indicatorColor: Colors.red,
              isScrollable: true,
              tabs: state.tabs,
            ),
          ),
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              Container(child: Dishes()),
              Container(child: Dishes()),
              Container(child: Dishes()),
              Container(child: Dishes()),
              Container(child: Dishes()),
              Container(child: Dishes()),
            ],
          )),
    );
  }
}
