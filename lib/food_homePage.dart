import 'package:flutter/material.dart';
import 'package:food_shop_tab/item-description.dart';
import 'package:food_shop_tab/for_list/item.dart';

import 'item1.dart';

class ShopHomePage extends StatefulWidget {
  const ShopHomePage({Key? key}) : super(key: key);

  @override
  _ShopHomePageState createState() => _ShopHomePageState();
}

class _ShopHomePageState extends State<ShopHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius:BorderRadius.circular(15),
                      ),
                      child: Icon(
                        Icons.keyboard_arrow_left,
                        color: Colors.black,
                        size: 28,
                      ),
                    ),
                    Icon(
                      Icons.filter_list,
                      color: Colors.black,
                      size: 28,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                "Fruit and berries",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(
                      fontSize: 16,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    contentPadding: EdgeInsets.all(20),
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(20),
                      child: Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 28,
                      ),
                    )),
              ),
              SizedBox(
                height: 16,
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: Item.list.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      childAspectRatio: 3 / 2,
                      mainAxisSpacing: 20,
                      mainAxisExtent: 220,
                    ),
                    itemBuilder: (BuildContext,index){
                 final product=Item.list[index];
                   return  GestureDetector(
                     onTap: () {
                       Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => ItemDescription(item: product)),
                       );
                     },
                     child: Container(
                       decoration: BoxDecoration(
                           color: product.color,
                           borderRadius: BorderRadius.all(
                             Radius.circular(25),
                           )),
                       child: Padding(
                         padding: EdgeInsets.all(16.0),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.stretch,
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Text(
                               product.title,
                               textAlign: TextAlign.left,
                               style: TextStyle(
                                   color: Colors.black,
                                   fontSize: 16,
                                   fontWeight: FontWeight.bold),
                             ),
                             Row(
                               crossAxisAlignment: CrossAxisAlignment.end,
                               children: [
                                 Text(
                                   r"$ " + product.price,
                                   textAlign: TextAlign.left,
                                   style: TextStyle(
                                       color: Colors.black,
                                       fontWeight: FontWeight.bold,
                                       fontSize: 16),
                                 ),
                                 SizedBox(
                                   width: 8,
                                 ),
                                 Text(
                                 product.PriceDescription,
                                   textAlign: TextAlign.left,
                                   style: TextStyle(color: Colors.black, fontSize: 14),
                                 )
                               ],
                             ),
                             SizedBox(
                               height: 8.0,
                             ),
                             Expanded(
                               child: Hero(
                                 tag: product.title,
                                 child: Image.asset(
                                   product.imageUrl,
                                 ),
                               ),
                             ),
                             SizedBox(
                               height: 8.0,
                             ),
                             Container(
                               decoration: BoxDecoration(
                                   color: Colors.black.withOpacity(0.1),
                                   borderRadius: BorderRadius.all(
                                     Radius.circular(25),
                                   )),
                               child: Padding(
                                 padding: const EdgeInsets.all(4.0),
                                 child: Row(
                                   crossAxisAlignment: CrossAxisAlignment.center,
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     Text(
                                       "Add to Cart",
                                       style: TextStyle(
                                         color: Colors.black,
                                         fontSize: 12,
                                         fontWeight: FontWeight.bold,
                                       ),
                                     ),
                                     SizedBox(
                                       width: 8,
                                     ),
                                     Icon(
                                       Icons.add_shopping_cart,
                                       color: Colors.black,
                                       size: 16,
                                     )
                                   ],
                                 ),
                               ),
                             )
                           ],
                         ),
                       ),
                     ),
                   );
                    },

              ),
              ),],
          ),
        ),
      ),
    );
  }

}
