import 'package:flutter/material.dart';
import 'package:flutter_online_shop/contants.dart';


class CartCounterState extends StatefulWidget {
  @override
  _CartCounterStateState createState() => _CartCounterStateState();
}

class _CartCounterStateState extends State<CartCounterState> {
  int numOfItem = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children:<Widget> [
        buildOutlineButton( 
          icon: Icons.remove,
          press: () {
            if(numOfItem > 1)
            {
              setState(() {
                numOfItem--;
              });
            }
          }
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
          child: Text(
            numOfItem.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
            ),
        ),
        buildOutlineButton( 
          icon: Icons.add,
          press: () {
            setState(() {
              numOfItem++;
            });
          }
        ),
      ],
    );
  }

  SizedBox buildOutlineButton({IconData icon, Function press}) {
    return SizedBox(
        width: 40,
        height: 32,
        child: OutlineButton(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13)
          ),
          onPressed: press,
          child: Icon(icon),
        ),
      );
  }
}