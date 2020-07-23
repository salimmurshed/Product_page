
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  double Price = 22.0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xfff46300),
          title: Text("Mobile"),
          ),
        body: ListView(
          children: <Widget>[
            Container(
              height: 260,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      child: Container(
                        decoration: BoxDecoration(color: Color(0xfff46300)),
                        height: 130,
                        width: MediaQuery.of(context).size.width,
                        child: Container(),
                      ),
                    ),
                    Positioned(
                      top: 80,
                      child: Center(
                        child: Container(
                          color: Colors.white,
                          height: 140,
                          width: 140,
                          child: Image.network("https://www.symphony-mobile.com/storage/slides/CF1Wt9WUpjkEACnC0UZuBpVHP.png", fit: BoxFit.cover,),
                        ),
                      ),
                    )
                  ],
                )),
            Center(
              child: Text(
                'You Purchased',style: TextStyle(fontSize: 24, color: Color(0xFF545151))
                ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('\$$Price',style: TextStyle(fontSize: 32, color: Color(0xFF545151))),
                  Container(
                    width: MediaQuery.of(context).size.width * .4,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: _incrementCounter,
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(color: Color(0xfff46300))),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xfff46300),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Icon(Icons.add),
                                    )),
                            ),
                          ),
                          ),
                        Container(
                          child: Center(
                            child: Text(
                              '$_counter',
                              style: Theme.of(context).textTheme.headline4,
                              ),
                          ),
                        ),
                        _counter>0?GestureDetector(
                          onTap: _decrementCounter,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(color: Color(0xfff46300))),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xfff46300),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Icon(Icons.remove),
                                  )),
                            ),
                          ),
                          ): Container(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: Text(
                  'Total Cost',style: TextStyle(fontSize: 24, color: Color(0xFF545151))
                  ),
            ),
            Container(
              child: Center(
                child: Text(
                  '${_counter*Price}',
                  style: Theme.of(context).textTheme.headline1,
                  ),
                ),
              ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width *.84,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width *.4,
                      height: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Color(0xfff46300))),
                      child: Center(child: Text("Add To Card")),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width *.4,
                      height: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xfff46300)),
                      child: Center(child: Text("Buy Now")),
                      ),
                  ],
                ),
              ),
            )
          ],
          ),
        ),
    );
  }
}
