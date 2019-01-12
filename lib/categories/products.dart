import 'package:flutter/material.dart';

import 'package:flutter_e_commerce/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => new  _ProductsState();
}

class _ProductsState extends State<Products> {

  var product_list=[
    {
      "name":"Blazer",
      "image":"images/products/blazer1.jpeg",
      "old_price":"120",
      "price":"80"
    },
    {
      "name":"Pant",
      "image":"images/products/pants2.jpeg",
      "old_price":"120",
      "price":"80"
    },
    {
      "name":"Hill",
      "image":"images/products/hills2.jpeg",
      "old_price":"120",
      "price":"80"
    },
    {
      "name":"Dress",
      "image":"images/products/dress1.jpeg",
      "old_price":"95",
      "price":"50"
    },
    /*{
      "name":"Hill",
      "image":"images/products/hills1.jpeg",
      "old_price":"120",
      "price":"180"
    },
    {
      "name":"Pant",
      "image":"images/products/pants1.jpg",
      "old_price":"115",
      "price":"89"
    },
    {
      "name":"Skirt",
      "image":"images/products/skt1.jpeg",
      "old_price":"320",
      "price":"480"
    },
    {
      "name":"Shoe",
      "image":"images/products/shoe1.jpg",
      "old_price":"360",
      "price":"550"
    },
    {
      "name":"Skirt",
      "image":"images/products/skt2.jpeg",
      "old_price":"120",
      "price":"80"
    }
    */

  ];

  @override
  Widget build(BuildContext context) {
    return new GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return new SingleProduct(
            prod_name: product_list[index]['name'],
            prod_image: product_list[index]['image'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class SingleProduct extends StatelessWidget {
  final prod_name;
  final prod_image;
  final prod_old_price;
  final prod_price;

  SingleProduct({
    this.prod_name,
    this.prod_image,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.only(left:8.0,top: 8.0),
      child: new Card(
        elevation:6.0 ,
        color:Colors.cyanAccent ,
        child: new Hero(
            tag: prod_name,
            child: new Material(
              child: new InkWell(
                onTap:(){
                  //We are passing the values from one activity to another activity
                  var route=new MaterialPageRoute(
                      builder: (BuildContext context)=> new ProductDetails(
                        productDetailsName: prod_name,
                        productDetailsImage: prod_image,
                        productDetailsOldPrice: prod_old_price,
                        productDetailsNewPrice: prod_price,
                      )
                  );
                  Navigator.of(context).push(route);
                },
                  child: new GridTile(
                    footer: new Container(
                      color: Colors.white70,
                      child: new ListTile(
                        leading: new Text(
                          prod_name,
                          style: new TextStyle(fontWeight: FontWeight.bold),
                        ),
                        title: new Text(
                          "\$$prod_price",
                          style: new TextStyle(
                              color: Colors.deepPurple, fontWeight: FontWeight.w800),
                        ),
                        subtitle: new Text(
                          "\$$prod_old_price",
                          style: new TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w800,
                              decoration
                                  :TextDecoration.lineThrough),
                        ),
                      ),
                    ),
                    child: new Padding(
                      padding: const EdgeInsets.all(8.0) ,
                      child: new Image.asset(
                        prod_image,
                        fit: BoxFit.cover,
                      ),
                    ),
                ),
              ),
            )),
      ),
    );
  }
}