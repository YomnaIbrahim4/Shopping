import 'package:flutter/material.dart';

import '../core/app_colors.dart';


class ProductCard extends StatefulWidget {
  final String title;
  final String price;
  final String imageUrl;

  const ProductCard({
    super.key,
    required this.title,
    required this.price,
    required this.imageUrl,
  });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(12),
      child: Column(
        children: [
          Image.network(widget.imageUrl, height: 120,width: 150,fit: BoxFit.fill,),
          ListTile(
            title: Text(widget.title),
            subtitle: const Text('Scandinavian small sized double sofa'),
            trailing: IconButton(
              icon: Icon(
                isLiked ? Icons.favorite : Icons.favorite_border,
                color: isLiked ? AppColors.red : AppColors.grey,
              ),
              onPressed: () {
                setState(() {
                  isLiked = !isLiked;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  color: AppColors.price,
                  height: 45,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(widget.price,
                        style:Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Colors.white
                        )),
                    ),
                  ),
                ),
                //const Spacer(),
                Container(
                  color: AppColors.primary,
                  child: TextButton(
                    onPressed: () {},
                    child:Text(
                        "Add to cart",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.white
                    )),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
