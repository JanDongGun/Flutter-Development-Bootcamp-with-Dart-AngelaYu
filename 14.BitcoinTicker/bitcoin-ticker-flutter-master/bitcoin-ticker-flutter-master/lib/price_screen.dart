import 'package:flutter/material.dart';

import 'coin_data.dart';
import 'coin_data.dart';
import 'coin_data.dart';

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String curValue = 'USD';
  var curNum;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUI();
  }

  void getUI() async {
    CoinData coinData = CoinData();
    var data = await coinData.getCoinData();

    if (data == null) {
      curNum = 0;
    } else {
      curNum = data['last'];
    }
  }

  List<DropdownMenuItem> getDropDownItem() {
    List<DropdownMenuItem<String>> dropDownItem = [];
    for (var i = 0; i < currenciesList.length - 1; i++) {
      var item = DropdownMenuItem(
        child: Text(currenciesList[i]),
        value: currenciesList[i],
      );

      dropDownItem.add(item);
    }

    return dropDownItem;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
            child: Card(
              color: Colors.lightBlueAccent,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                child: Text(
                  '1 BTC = $curNum USD',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: DropdownButton<String>(
              value: curValue,
              items: getDropDownItem(),
              onChanged: (value) {
                setState(() {
                  curValue = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
