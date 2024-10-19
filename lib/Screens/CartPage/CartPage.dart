import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('My Cart'),
      backgroundColor: Colors.greenAccent,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: Center(
            child: Text(
              '2 Items',
              style: TextStyle(color: Colors.black54),
            ),
          ),
        ),
      ],
    ),
    body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                _buildCartItem('Jacket', 72, 2, 'assets/images/product2.jpeg'),
                _buildCartItem('Laptop', 120, 5, 'assets/images/product3.jpeg'),
              ],
            ),
          ),
          _buildSummary(),
          SizedBox(height: 16),
          _buildCheckoutButton(),
        ],
      ),
    ),
  );
}
Widget _buildCartItem(String title, int price, int weight, String imagePath) {
  return Card(
    elevation: 4,
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Image.asset(imagePath, height: 50, width: 50),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text('Price: \$$price'),
                Text('Weight: ${weight}kg'),
              ],
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.remove_circle_outline),
              ),
              Text('${weight}kg'),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add_circle_outline),
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.delete, color: Colors.red),
          ),
        ],
      ),
    ),
  );
}

Widget _buildSummary() {
  return Card(
    elevation: 4,
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          _buildSummaryRow('Total', '\$192'),
          _buildSummaryRow('VAT', '\$5'),
          _buildSummaryRow('Delivery fee', 'Free'),
          Divider(),
          _buildSummaryRow('Sub Total', '\$197', isBold: true),
        ],
      ),
    ),
  );
}

Widget _buildSummaryRow(String label, String value, {bool isBold = false}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 4.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            fontSize: isBold ? 16 : 14,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            fontSize: isBold ? 16 : 14,
          ),
        ),
      ],
    ),
  );
}

Widget _buildCheckoutButton() {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.greenAccent,
      minimumSize: Size(double.infinity, 50),
    ),
    child: Text(
      'Check Out',
      style: TextStyle(fontSize: 18),
    ),
  );
}
}