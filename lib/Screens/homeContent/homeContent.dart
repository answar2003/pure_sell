import 'package:flutter/material.dart';

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'PureSell',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_bag, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search Bar
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.search, color: Colors.grey),
                    const SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search brand or Products...",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.filter_list, color: Colors.pink),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Categories Row
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoryItem(label: "Kids"),
                    CategoryItem(label: "Men"),
                    CategoryItem(label: "Women"),
                    CategoryItem(label: "Offers"),
                    CategoryItem(label: "New"),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Flash Sale Banner
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "24th - 27th",
                          style: TextStyle(color: Colors.pink, fontSize: 12),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Flash Sale",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Get 20% - 60% OFF",
                          style: TextStyle(color: Colors.pink),
                        ),
                        Text(
                          "*No coupon required",
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Image.asset(
                      "assets/images/banner1.jpeg", // Replace with the actual image link
                      height: 80,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // New Arrivals Section
              const Text(
                "New Arrivals",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),

              // New Arrivals Items
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  ArrivalItem(
                    imageUrl:("https://5.imimg.com/data5/SELLER/Default/2022/9/VK/FQ/EG/17769549/ap0015.jpeg"), // Replace with the actual image
                    title: "Shirt",
                    price: "\$125",
                    discount: "10% OFF",
                  ),
                  ArrivalItem(
                    imageUrl:("https://5.imimg.com/data5/SELLER/Default/2022/9/RL/ZT/GR/17769549/bkt001-5347-1000x1000.jpeg"), // Replace with the actual image
                    title: "Exclusive Shirt",
                    price: "\$140",
                    discount: "10% OFF",
                  ),
                ],
              ),
              const Text(
                "New Brand",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),

              // New Arrivals Items
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  ArrivalItem(
                    imageUrl:("https://5.imimg.com/data5/SELLER/Default/2022/9/VK/FQ/EG/17769549/ap0015.jpeg"), // Replace with the actual image
                    title: "Shirt",
                    price: "\$125",
                    discount: "10% OFF",
                  ),
                  ArrivalItem(
                    imageUrl:("https://5.imimg.com/data5/SELLER/Default/2022/9/RL/ZT/GR/17769549/bkt001-5347-1000x1000.jpeg"), // Replace with the actual image
                    title: "Exclusive Shirt",
                    price: "\$140",
                    discount: "10% OFF",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String label;
  const CategoryItem({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(label),
    );
  }
}

class ArrivalItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;
  final String discount;

  const ArrivalItem(
      {required this.imageUrl, required this.title, required this.price, required this.discount});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      child: Column(
        children: [
          Image.network(imageUrl, height: 100),
          const SizedBox(height: 8),
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          Text(price, style: const TextStyle(color: Colors.black)),
          const SizedBox(height: 4),
          Text(discount, style: const TextStyle(color: Colors.pink)),
        ],
      ),
    );
  }
}