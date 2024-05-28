import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wolfcaref/widgets/action_container_lagre.dart';
import 'package:wolfcaref/widgets/action_container_small.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Wolf Care',
        style: TextStyle(
          fontSize: 32,
        ),),
        centerTitle: true,
        backgroundColor: Color(0xffB81736),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.grey[100],
              child: IconButton(
                onPressed: (){},
                icon: Icon(Icons.person),
                color: Colors.grey[500],
              ),
            )
          )
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: const [
                Expanded(
                  child: ActionContainerLarge(
                    img: 'assets/suv.png',
                    title: 'Ride',
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: ActionContainerLarge(
                      img: 'assets/box.png', title: 'Package'),
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: const [
                Expanded(
                  child: ActionContainerSmall(
                    img: 'assets/car.png',
                    title: 'Car',
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: ActionContainerSmall(
                    img: 'assets/motorcycle.png',
                    title: 'Motor',
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: ActionContainerSmall(
                    img: 'assets/delivery-bike.png',
                    title: 'Delivery',
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: ActionContainerSmall(
                    img: 'assets/car.png',
                    title: 'Transit',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            TextField(
             // onTap: () {
                //Navigator.push(
                 // context,
                  //MaterialPageRoute(
                    //  builder: (context) => SearchScreen(),
                   //   fullscreenDialog: true),
               // );
             // },
              autofocus: false,
              showCursor: false,
              decoration: InputDecoration(
                  hintText: 'Where To?',
                  hintStyle: const TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 24),
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: InputBorder.none),
            ),
            

          ],

        ),
      ),
    );
  }
}
