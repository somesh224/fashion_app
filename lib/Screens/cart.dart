import 'package:flutter/material.dart';

class Mycart extends StatelessWidget {
  Mycart({super.key});

  final List<Map<String, dynamic>> cartItems = [
    {
      'name': 'Item 1',
      'image':
          'assets/images/fashion_girl.png', // Replace with the actual image asset path
    },
    {
      'name': 'Item 2',
      'image': 'assets/images/fashion_girl.png',
    },
    {
      'name': 'Item 3',
      'image': 'assets/images/fashion_girl.png',
    },
    {
      'name': 'Item 4',
      'image': 'assets/images/fashion_girl.png',
    },
    // Add more items with images as needed
  ];
  static String price = 'XX Rs.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Cart', // Add the title "Cart"
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(left: 25, right: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Items',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: cartItems.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(cartItems[index]['image']),
                                fit: BoxFit.fitHeight,
                              ),
                              color: Colors.yellow.withOpacity(0.5),
                              // border: Border.all(width: 0.8, color: Colors.grey),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            width: 100,
                            height: 140,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    cartItems[index]['name'],
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    Text('Price: \$XX.XX, Quantity: X'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '$price',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: GestureDetector(
                onTap: () {
                  // Add your checkout logic here
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 130,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    'Checkout',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
