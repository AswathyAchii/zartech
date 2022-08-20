import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zartech/core/colors.dart';
import 'package:zartech/screens/home/application/home_bloc.dart';
import 'package:zartech/screens/loading/loading.dart';
import 'package:zartech/screens/widgets/dishes_widget.dart';

List? text1 = [
  Tab(
    text: "",
  )
];
String? text2 = "";
String? text3 = "";
String? text4 = "";
String? text5;
String? text6;
int? length;

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
          showWidget = tabs(state);
        }
        return showWidget;
      },
    );
  }

  DefaultTabController tabs(HomeState state) {
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
              child: Icon(
                Icons.shopping_cart,
                color: normalBlack,
                size: 25,
              ),
            )
          ],
          bottom: TabBar(
            unselectedLabelColor: normalBlack,
            labelColor: Colors.red,
            indicatorColor: Colors.red,
            isScrollable: true,
            tabs: state.tabs,
          ),
        ),
        body: TabBarView(
          children: [
            Dishes(),
            Container(color: Colors.blue),
            Container(
              color: Colors.red,
            ),
            Container(color: Colors.blue),
            Container(
              color: Colors.red,
            ),
            Container(color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
