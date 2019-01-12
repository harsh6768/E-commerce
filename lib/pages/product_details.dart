import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/categories/products.dart';
import 'package:flutter_e_commerce/cart/cart.dart';
import 'package:flutter_e_commerce/main.dart';


class ProductDetails extends StatefulWidget {

  final productDetailsName;
  final productDetailsImage;
  final productDetailsNewPrice;
  final productDetailsOldPrice;

  ProductDetails({
   this.productDetailsName,
   this.productDetailsImage,
   this.productDetailsOldPrice,
   this.productDetailsNewPrice
  });

  @override
  _ProductDetailsState createState() => new  _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          centerTitle: true,
          leading: new IconButton(
              icon:new Icon(Icons.arrow_back),
              onPressed: (){
                Navigator.of(context).pop();
              }
          ),
          backgroundColor: Colors.deepPurple,
          title:new InkWell(
              onTap: (){
                Navigator.of(context).push(
                  new MaterialPageRoute(
                    builder:(BuildContext context)=>new MyHome(),
                  ),
                );
              },
              child: new Text('Octivia',)
          ),
          actions: <Widget>[

            //""""""""""""""""""""""""""
            //For Cart
            //"""""""""""""""""""""""""
            new IconButton(
                icon: new Icon(Icons.shopping_cart,color: Colors.white,),
                onPressed: (){
                  Navigator.of(context).push(
                    new MaterialPageRoute(
                        builder:(BuildContext context)=>new Cart()
                    ),
                  );
                }
            ),
          ],
        ),
        body: new ListView(
          children: <Widget>[

            // Setting the image and details of the product
            new Container(
              height:300.0,
              child: new GridTile(
                child:new Padding(
                  padding: const EdgeInsets.only(left:16.0),
                  child: new Container(
                    height:25.0,
                    color:Colors.white70,
                    child:new Image.asset(widget.productDetailsImage)
                  ),
                ),
                footer: new Container(
                  color: Colors.white70,
                  child: new ListTile(
                    leading: new Text("${widget.productDetailsName}",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                        color: Colors.cyan
                       ),
                    ),
                    title: new Padding(
                      padding: const EdgeInsets.only(left:16.0),
                      child: new Row(
                        children: <Widget>[
                          new Expanded(
                              child:new Text(
                                "\$${widget.productDetailsOldPrice}",
                                 style: new TextStyle(
                                   decoration: TextDecoration.lineThrough,
                                 ),)
                          ),
                          new Expanded(
                              child:new Text(
                                  "\$${widget.productDetailsNewPrice}",
                                style: new TextStyle(
                                  color: Colors.deepPurple
                                ),
                              ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),


            //
            new Row(
              children: <Widget>[
                new Expanded(
                    child:new MaterialButton(
                      child: new Row(
                        children: <Widget>[
                          new Expanded(
                              child:new Text('Size')
                          ),
                          new Expanded(
                              child:new Icon(Icons.keyboard_arrow_down),
                          ),
                        ],
                      ),
                      color:Colors.white,
                      textColor: Colors.grey,
                      onPressed:(){},
                    ),
                ),

                //for color button
                new Expanded(
                  child:new MaterialButton(
                    child: new Row(
                      children: <Widget>[
                        new Expanded(
                            child:new Text('Color')
                        ),
                        new Expanded(
                          child:new Icon(Icons.keyboard_arrow_down),
                        ),
                      ],
                    ),
                    color:Colors.white,
                    textColor: Colors.grey,
                    onPressed:(){},
                  ),
                ),

                /////////////
                //////////////
                //////////
                //for quantity

                new Expanded(
                  child:new MaterialButton(
                    child: new Row(
                      children: <Widget>[
                        new Expanded(
                            child:new Text('Qty')
                        ),
                        new Expanded(
                          child:new Icon(Icons.keyboard_arrow_down),
                        ),
                      ],
                    ),
                    color:Colors.white,
                    textColor: Colors.grey,
                    onPressed:(){},
                  ),
                ),
              ],
            ),

            //   """"""""""""""""""""""""           """"""""""""""""""""""""""""
            //   """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
            new Padding(
              padding: const EdgeInsets.only(left:64.0,right: 64.0,top: 16.0),
              child: new Row(
                children: <Widget>[
                  new Expanded(
                      child: new MaterialButton(
                        child: new Text("Buy Now"),
                        color: Colors.deepPurple,
                          textColor: Colors.white,
                          onPressed: (){}
                      ),
                  ),
                  new IconButton(
                    color: Colors.deepPurple,
                      icon:new Icon(Icons.add_shopping_cart),
                      onPressed: (){}
                  ),
                  new IconButton(
                      color: Colors.deepPurple,
                      icon:new Icon(Icons.favorite_border),
                      onPressed: (){}
                  ),
                ],
              ),
            ),

            //""""""""""""""""""""""""""
            //
            // """"""""""""""""""""""""""""
            new Padding(
                padding: const EdgeInsets.only(left:16.0,top: 8.0),
              child: new Text(
                  'Product Details',
                style: new TextStyle(
                  color: Colors.black54,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.only(left:16.0,top: 8.0),
              child: new Text(
                "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsumis that it has a more-or-less normal distribution of letters, as opposed to usingContent here, content here making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for Various versions have evolved over the years, sometimes by accident, sometimes on purpose ",
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: 14.0,
                ),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.only(left:16.0,top: 8.0),
              child: new Text(
                'Similar Products',
                style: new TextStyle(
                  color: Colors.black54,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            new Container(
              height: 400.0,
              child:new Products() ,
            ),
          ],
        ),
      ),
    );
  }

}

