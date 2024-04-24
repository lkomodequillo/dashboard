import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false, 
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: ListView.builder(
        itemCount: 10, 
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ItemDetailsScreen()),
              );
            },
            child: SizedBox(
              width: double.infinity,
              height: 150, 
              child: Card(
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 100, 
                        child: Image.asset(
                          'lib/assets/image.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: Text('Item $index'),
                        subtitle: Text('Description of Item $index'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class ItemDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('lib/assets/image.png'),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Item Name:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('Item Name Here'),
                  SizedBox(height: 8),
                  Text(
                    'Description:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('Description of the item goes here.'),
                  SizedBox(height: 8),
                  Text(
                    'Price:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('Price of the item goes here.'),
                  SizedBox(height: 8),
                  Text(
                    'Location:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('Location of the item goes here.'),
                  SizedBox(height: 8),
                  Text(
                    'Amenities:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('List of amenities goes here.'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

