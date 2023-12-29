// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:personal_wallet/util/my_button.dart';
import 'package:personal_wallet/util/my_card.dart';
import 'package:personal_wallet/util/my_list_tile.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //pagecontroller
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.pink,
        child: Icon(
          Icons.monetization_on,
          size: 32,
          color: Colors.white,
          ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.only(top:8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.home, size: 32, color: Colors.pink[200],)),
              IconButton(onPressed: (){}, icon: Icon(Icons.settings,size: 32, color: Colors.grey,)),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(children: [
          SizedBox(height: 10,),

          //appbar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Text('My',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,),
                ),
                Text(' Cards',
                style: TextStyle(fontSize: 28),
                ),
                ],
                ),

                //plus button
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    shape: BoxShape.circle,
                    ),
                  child: Icon(Icons.add),
                  ),
              ],
            ),
          ),

          SizedBox(height: 15),

          //cards

          Container(
            height: 200,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: _controller,
              children: [
                MyCard(
                  balance: 1000.20,
                  cardNumber: 123456789,
                  expiryMonth: 10,
                  expiryYear: 24,
                  color: Colors.deepPurple[300],
                ),
                MyCard(
                  balance: 5800.00,
                  cardNumber: 567891234,
                  expiryMonth: 12,
                  expiryYear: 26,
                  color: Colors.blue[300],
                ),
                MyCard(
                  balance: 420.20,
                  cardNumber: 7891123456,
                  expiryMonth: 8,
                  expiryYear: 22,
                  color: Colors.green[300],
                ),
              ],
            ),
          ),

          SizedBox(height: 25,),

          SmoothPageIndicator(
            controller: _controller, 
            count: 3,
            effect: ExpandingDotsEffect(
              activeDotColor: Colors.grey.shade700,
              ),
          ),

          SizedBox(height: 25,),

          //3 buttons -> send+pay+bills
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //send button
                MyButton(
                  iconImagePath: 'lib/icons/send money.png', 
                  buttonText: 'Send'),
            
                //pay button
            
                MyButton(
                  iconImagePath: 'lib/icons/credit card.png', 
                  buttonText: 'Pay'),
            
                //bills button
                MyButton(
                  iconImagePath: 'lib/icons/bill.png', 
                  buttonText: 'Bills'),
              ],
            ),
          ),


          //column -> stats+transactions

          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                //statics
                MyListTile(
                  iconImagePath: 'lib/icons/statics.png', 
                  titleTitle: 'Statistics', 
                  titleSubTitle: 'Payments and Income',
                ),

                //transactions
                MyListTile(
                  iconImagePath: 'lib/icons/transaction.png', 
                  titleTitle: 'Transactions', 
                  titleSubTitle: 'Transaction History',
                ),
              ],
            ),
          )

        ]),
      ),
    );
  }
}