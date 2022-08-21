import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zartech/core/colors.dart';
import 'package:zartech/core/constants.dart';
import 'package:zartech/screens/home/application/home_bloc.dart';
import 'package:zartech/widgets/loading/loading.dart';

class Dishes extends StatelessWidget {
  const Dishes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        Widget _showWidget = SizedBox();
        state.isLoading == true
            ? _showWidget = Loading()
            : _showWidget = SizedBox(
                height: 300,
                child: ListView.separated(
                  itemCount: state
                      .result![0]
                      .tableMenuList![state.currenMenuCategorytIndex]
                      .categoryDishes!
                      .length,
                  itemBuilder: (BuildContext context, index) {
                    return Container(
                      padding: EdgeInsets.all(10),
                      constraints: BoxConstraints(
                        maxHeight: double.infinity,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              constraints: BoxConstraints(
                                maxHeight: double.infinity,
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 6,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            typeOfDishe(state
                                                .result![0]
                                                .tableMenuList![state
                                                    .currenMenuCategorytIndex]
                                                .categoryDishes![index]
                                                .dishType!),
                                            dishName(state
                                                .result![0]
                                                .tableMenuList![state
                                                    .currenMenuCategorytIndex]
                                                .categoryDishes![index]
                                                .dishName!),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 22.0),
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  dishPrice(state
                                                      .result![0]
                                                      .tableMenuList![state
                                                          .currenMenuCategorytIndex]
                                                      .categoryDishes![index]
                                                      .dishPrice!),
                                                  dishCalories(state
                                                      .result![0]
                                                      .tableMenuList![state
                                                          .currenMenuCategorytIndex]
                                                      .categoryDishes![index]
                                                      .dishCalories),
                                                ],
                                              ),
                                              dishDescription(state
                                                  .result![0]
                                                  .tableMenuList![state
                                                      .currenMenuCategorytIndex]
                                                  .categoryDishes![index]
                                                  .dishDescription!),
                                              kHeight20,
                                              addToCartButton(),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: state.isLoading
                                        ? CircularProgressIndicator()
                                        : dishImage(state
                                            .result![0]
                                            .tableMenuList![
                                                state.currenMenuCategorytIndex]
                                            .categoryDishes![index]
                                            .dishImage!),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, index) {
                    return Divider(
                      thickness: 1,
                      color: greyColor,
                    );
                  },
                ),
              );
        return _showWidget;
      },
    );
  }

  Container dishImage(String dishImage) {
    return Container(
      margin: const EdgeInsets.only(left: 10.0),
      alignment: Alignment.topRight,
      height: 90,
      width: 80,
      // ignore: unnecessary_null_comparison
      child: Image.network(
        dishImage,
        errorBuilder: (context, error, stackTrace) {
          return Container(
            color: Colors.amber,
            alignment: Alignment.center,
            child: const Text(
              'Whoops!',
              style: TextStyle(fontSize: 30),
            ),
          );
        },
      ),
    );
  }

  Text dishCalories(double caloreis) => Text(
        "Caloreis $caloreis",
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w600,
        ),
      );

  Text dishPrice(double dishPrice) => Text(
        "INR $dishPrice",
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w700,
        ),
      );

  Padding dishDescription(String dishDescription) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 1),
      child: Text(
        dishDescription,
        // "assfh ffhf telo kmnmjymhbtdfghjksfsfxxdhghghgghghghg          dfghasdfghasdfgh dfhjgh         v hbv cu cyb ",
      ),
    );
  }

  Container addToCartButton() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.remove, size: 22, color: Colors.white),
              ),
              Text(
                "1",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add,
                  size: 22,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
      alignment: Alignment.topCenter,
      height: 40,
      width: 140,
      decoration: BoxDecoration(
        color: darkGreen,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
    );
  }

  Flexible dishName(String dishName) {
    return Flexible(
      child: Container(
        padding: const EdgeInsets.only(
          left: 5.0,
          right: 8,
          bottom: 2,
        ),
        child: Text(
          dishName,
          maxLines: 1,
          style: TextStyle(
            fontSize: 15,
            color: headingBlack,
            fontWeight: FontWeight.w800,
          ),
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }

  Container typeOfDishe(int dishType) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: double.infinity,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: normalBlack),
        shape: BoxShape.rectangle,
        color: Colors.white,
      ),
      width: 15,
      height: 15,
      child: Center(
        child: Container(
          constraints: BoxConstraints(
            maxHeight: double.infinity,
          ),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: dishType == 1 ? darkRed : darkGreen,
          ),
          height: 8,
          width: 8,
        ),
      ),
    );
  }
}
