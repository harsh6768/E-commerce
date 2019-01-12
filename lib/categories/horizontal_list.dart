import 'package:flutter/material.dart';


class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 120.0,
      child: new ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          new Category(
           image_location: 'images/cat/tshirt.png',
            image_caption: 'Shirts',
          ),
          new Category(
            image_location: 'images/cat/shoe.png',
            image_caption: 'Shoes',
          ),
          new Category(
            image_location: 'images/cat/watch.png',
            image_caption: 'Watches',
          ),
          new Category(
            image_location: 'images/cat/jwellery.png',
            image_caption: 'Jwellery',
          ),
          new Category(
            image_location: 'images/cat/glasses.png',
            image_caption: 'Glasses',
          ),
        ],
      ),

    );
  }
}


class Category extends StatelessWidget {

  final String image_location;
  final String image_caption;

  //Making
  Category({
   this.image_location,
   this.image_caption
  });

  @override
  Widget build(BuildContext context) {
    return new Padding(
        padding:const EdgeInsets.all(4.0),
      child: new InkWell(
        onTap: (){},
        child: new Container(
          width: 100.0,
          child: new ListTile(
            title: new Image.asset(
                image_location,
              width: 100.0,
              height: 80.0,
            ),
            subtitle: new Container(
                alignment: Alignment.center,
                child: new Text(image_caption,style: new TextStyle(color: Colors.redAccent,fontSize: 14.0),)),
          ),
        ),
      ),

    );
  }
}

