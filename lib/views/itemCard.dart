import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_cart/models/products.dart';

class ItemCards extends StatelessWidget {
  final Product product;

  const ItemCards({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            height: 180,
            width: 160,
            decoration: BoxDecoration(

              color: Color(0XFFe3e3e3),
              borderRadius: BorderRadius.circular(14.0)
            ),
            child: Image.network(product.image),
          ),

        ),
        Text(product.title,style: TextStyle(fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
        Text(" Rs ${product.price}",style: TextStyle(fontWeight: FontWeight.bold),),
        FlatButton(
          onPressed: (){},
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(color: Colors.red)),
            color: Colors.orangeAccent,
          child:
            Text("Buy")
        )
      ],
    );
  }
}
