import 'package:e_commerce/Models/shoe.dart';
import 'package:flutter/material.dart';
import '../components/shoe_tile.dart';


class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //   search bar
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.grey[300],
          borderRadius: BorderRadius.circular(8),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text("Search",
            style: TextStyle(
              color: Colors.grey,
            ),
            ),
              Icon(Icons.search,
              color: Colors.grey,
              ),
            ],
          ),
        ),
        //   message
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          child: Text("Everyone Walks... Some walks longer than others",
          style: TextStyle(color: Colors.blue),
          ),
        ),
        // hot picks
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("Hot Picks 🔥",
              style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 24,
              ),
              ),
              Text("See all",
              style: TextStyle(fontWeight: FontWeight.bold,
              color: Colors.blue),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
            child: ListView.builder(
          itemCount: 6,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index){
              Shoe shoe = Shoe(
                  name: "Air Jordan",
                  price: "250",
                  imagePath: "lib/images/OIP.jpg",
                  description: "cool shoe");
              return ShoeTile(
                shoe: shoe,
              );
            }))
      ]
    );
  }
}
