import 'package:flutter/material.dart';
import 'package:my_portfolio_app/hero_info/hero_info.dart';

class HeroDetail extends StatefulWidget {
  final HeroInfo item;
  const HeroDetail({super.key,required this.item});

  @override
  State<HeroDetail> createState() => _HeroDetailState();
}

class _HeroDetailState extends State<HeroDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(widget.item.title,style: const TextStyle(
          color: Colors.white,
          fontSize: 22
        ),),
      ),
      body:Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 4,
            child: Hero(
                tag:widget.item.image,
                child:Image.asset(widget.item.image),
            ),
          ),
        ),
      )
    );
  }
}
