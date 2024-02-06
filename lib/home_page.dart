import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

enum CategoryLabel { all, accessories, dress, top, jacket }

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CategoryLabel categoryDropdownLabel = CategoryLabel.all;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: Theme.of(context).textTheme.displayLarge,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.cart_fill,
                  size: 32,
                )),
          )
        ],
      ),
      drawer: const NavigationDrawer(
        children: [],
      ),
      body: Center(
          child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Search for items or sellers...",
                  hintStyle: Theme.of(context).textTheme.displayMedium,
                  fillColor: Colors.white,
                  filled: true,
                  suffixIcon: IconButton(
                    icon: Icon(
                      CupertinoIcons.search_circle_fill,
                      size: 32,
                    ),
                    onPressed: () {},
                  ),
                  isCollapsed: true,
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                  isDense: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Categories',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey.shade900,
                      fontWeight: FontWeight.w700),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: DropdownButtonFormField<CategoryLabel>(
                      dropdownColor: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15),
                          )),
                      value: categoryDropdownLabel,
                      items: CategoryLabel.values
                          .map((e) => DropdownMenuItem(
                                value: e,
                                child: Text(e
                                    .toString()
                                    .split('.')[1]
                                    .replaceFirst(
                                        e.toString().split('.')[1][0],
                                        e
                                            .toString()
                                            .split('.')[1][0]
                                            .toUpperCase())),
                              ))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          categoryDropdownLabel = value!;
                          print(value);
                        });
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
