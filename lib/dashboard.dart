import 'package:flutter/material.dart';
import 'package:my_app/cart.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          backgroundColor: Colors.grey[200],
          title: Text(
            'Checkout',
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Shipping to',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: 100,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.purple[100],
                ),
                child: Center(
                  child: Text(
                    'Home',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: 350,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.purple[100],
                ),
                child: Center(
                  child: Text(
                    'Office',
                    style: TextStyle(
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Text(
                'Payment Method',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Credit Card',
                    prefixIcon: Icon(Icons.add_circle_outline),
                    border: OutlineInputBorder()),
              ),
              SizedBox(height: 15),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Pay Pal',
                    prefixIcon: Icon(Icons.add_circle_outline),
                    border: OutlineInputBorder()),
              ),
              SizedBox(height: 15),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Google Pay',
                    prefixIcon: Icon(Icons.add_circle_outline),
                    border: OutlineInputBorder()),
              ),
              SizedBox(height: 15),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Apple Pay',
                    prefixIcon: Icon(Icons.add_circle_outline),
                    border: OutlineInputBorder()),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Shipping fee',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'NI5,000',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'SUB-TOTAL',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'N 3,686,000',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'TOTAL',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'N 3,701,000',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.purple),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const Cart())));
                    },
                    child: const Text('Proceed to Payment'),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
