import 'package:flutter/material.dart';
import 'package:food_shop_tab/item.dart';
class ItemDescription extends StatelessWidget {

  final Item item;
  ItemDescription({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: item.color,
      body: Container(
        width: double.infinity,
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24.0,right: 24.0,bottom: 24.0,top: 48.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);

                    },
child: Container(
  width: 45,
  height: 45,
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.all(
      Radius.circular(15),
    )
  ),
  child: Icon(
    Icons.keyboard_arrow_left,
    color: Colors.black,
    size: 28,
  ),
),
                  )

                ],
              ),
            ),

      Center(
        child: SizedBox(
          height: 120,
          child: Hero(
            tag: item.title,
            child: Image.asset(
              item.imageUrl,
            ),
            ),
  ),
),
            SizedBox(height: 32.0,),
            Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(50),
                    )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      crossAxisAlignment:CrossAxisAlignment.start ,
                      children: [
Text(
  item.title,
  style: TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: Colors.black
  ),
),
                        Text(item.PriceDescription,
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                        ),
                        ),
                        SizedBox(height: 24,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    width:48,
                                    height: 48,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        bottomLeft:Radius.circular(15),
                                      )
                                    ),
                                    child:Icon(
                                      Icons.remove,
                                      color: Colors.black,

                                    )
                                  ),

                                ],

                              ),
                            ),
                            Container(
                              child: Text(
                                r"$"+item.price,
                                style: TextStyle(
                                  fontSize: 36,
                                  fontWeight: FontWeight.bold,
                                    color: Colors.black
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 24,
                        ),
                        Expanded(
                            child:
                        SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text("Product description",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                              ),),
                              Text(item.description,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,

                                ),
                              )

                            ],
                          ),
                        ),
                        ),
                        SizedBox(height: 24,
                        ),
                        Row(
                          children: [
                            Container(
                              child:Container(
                                height: 72,
                                width: 72,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                  border: Border.all(
                                    color: item.color,
                                    width: 2,
                                  )

                                ),
                                child: Icon(
                                  Icons.favorite,
                                  color: item.color,
                                  size: 16,
                                ),

                              ) ,

                            ),SizedBox(
                              width: 16,
                            ),
                            Expanded(
                                child: Container(
                              height: 72,
                                  decoration: BoxDecoration(
                                    color: item.color,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20)
                                    ),

                                  ),
                                  child: Center(
                                    child: Text("Add to Cart",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                  ),
                            ))
                          ],
                        )
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),

    );
  }
}
