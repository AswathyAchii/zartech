import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zartech/core/colors.dart';
import 'package:zartech/screens/home/application/home_bloc.dart';

class CartItems extends StatelessWidget {
  const CartItems({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return ListView.separated(
          separatorBuilder: (context, index) {
            return Divider(
              thickness: 1,
              color: greyColor,
            );
          },
          itemCount: state.cartItemsmodel.length,
          itemBuilder: (BuildContext context, index) {
            return Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 100,
                      constraints: BoxConstraints(maxHeight: double.infinity),
                      color: Colors.red,
                      child: Column(
                        children: [
                          Row(children: [
                            typeOfDishe(
                              state.cartItemsmodel[index].dishType!,
                            )
                          ]),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      constraints: BoxConstraints(maxHeight: double.infinity),
                      color: Colors.green,
                    ),
                  )
                ],
              ),
            );
          },
        );
      },
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
