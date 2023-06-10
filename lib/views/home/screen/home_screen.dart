import 'package:expense_manager/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      appBar: AppBar(
        title: const Text(
          "Home page",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: const Color.fromRGBO(238, 241, 242, 1),
        elevation: 0,
        leading: null,
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.add,
              color: Colors.black45,
            ),
            onPressed: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) => AddCardPage()));
            },
          )
        ],
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // (Provider.of<CardProvider>(context).getCardLength() > 0 ?
            // Container(
            //     height: 210,
            //     child: Consumer<CardProvider>(
            //       builder: (context, cards, child) => CardList(cards: cards.allCards,),
            //     )
            // ) :
            Container(
              height: 210,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  "Add your new card click the \n + \n button in the top right.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                "Last Transactions",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.black45,
                ),
              ),
            ),
            const SizedBox(height: 15),
            // TransactionView(transaction: TransactionModel(name: 'Shopping', price: 1000, type: '-', currency: 'US'),),
            // TransactionView(transaction: TransactionModel(name: 'Salary', price: 1000, type: '+', currency: 'US'),),
            // TransactionView(transaction: TransactionModel(name: 'Receive', price: 200, type: '+', currency: 'US'),)
          ],
        ),
      ),
    );
  }
}
