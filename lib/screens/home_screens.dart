import 'package:flutter/material.dart';
import '../core/app_colors.dart';
import '../widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
    '''Hello, Pino
    
What do you want to buy ?'''),
        toolbarHeight: 200,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8),
            child:Icon(Icons.menu,color: Colors.white,size: 30,),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: const Icon(Icons.search, color: AppColors.primary),
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(children: [Icon(Icons.chair), Text("Sofas")]),
              Column(children: [Icon(Icons.inventory), Text("Wardrobe")]),
              Column(children: [Icon(Icons.desk), Text("Desk")]),
              Column(children: [Icon(Icons.face), Text("Dresser")]),
            ],
          ),
          const SizedBox(height: 10),
          const Expanded(
            child: SingleChildScrollView(
              child: ProductCard(
                title: "FinnNavian",
                price: "\$248",
                imageUrl: "https://www.mecaworks.com/wp-content/uploads/2023/01/mw-024.webp",
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chair), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.timer), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
    );
  }
}
