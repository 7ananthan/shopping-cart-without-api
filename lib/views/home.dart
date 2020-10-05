import 'package:flutter/cupertino.dart';
import 'package:shopping_cart/models/products.dart';
import 'package:shopping_cart/views/itemCard.dart';

class HomeScr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 10.0,
        ),
        Expanded(
          child: PageView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage("https://images-eu.ssl-images-amazon.com/images/G/31/img20/Wireless/WLA/September/NTA-WLA/V251570220_WLA-FDFO-Heroes_DesktopTallHero_1500x600._CB404130375_.jpg")
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image:NetworkImage("https://images-eu.ssl-images-amazon.com/images/G/31/img17/AmazonPay/Ankit/Credit-Card-Bill_1500x600_3._CB403387722_.jpg"
                      ) )
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
            child:Padding(
              padding: const EdgeInsets.all(8.0),

              child: GridView.builder(
                itemCount: products.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                  childAspectRatio: .75,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0
                  ),
                  itemBuilder: (context,index){
                    return ItemCards(product: products[index]);
                  }),
            ))
      ],
    );
  }
}

