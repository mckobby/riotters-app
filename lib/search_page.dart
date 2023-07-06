import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

TextEditingController searchQueryController = TextEditingController();

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxHeight > constraints.maxWidth) {
            return Padding(
              padding: EdgeInsets.only(top: height * 0.06),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      setState(() {
                        searchQueryController.clear();
                      });
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                    ),
                  ),
                  SizedBox(
                    width: width * 0.65,
                    child: TextField(
                      textInputAction: TextInputAction.search,
                      controller: searchQueryController,
                      decoration: InputDecoration(
                        hintText: 'Search here',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            style: BorderStyle.solid,
                            width: 1.0,
                          ),
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 10),
                        filled: true,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        searchQueryController.clear();
                      });
                    },
                    icon: const Icon(
                      Icons.search,
                    ),
                  ),
                ],
              ),
            );
          } else {
            return Padding(
              padding: EdgeInsets.only(top: height * 0.1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      setState(() {
                        searchQueryController.clear();
                      });
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                    ),
                  ),
                  SizedBox(
                    width: width * 0.65,
                    child: TextField(
                      textInputAction: TextInputAction.search,
                      controller: searchQueryController,
                      decoration: InputDecoration(
                        hintText: 'Search here',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            style: BorderStyle.solid,
                            width: 1.0,
                          ),
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 30),
                        filled: true,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        searchQueryController.clear();
                      });
                    },
                    icon: const Icon(
                      Icons.search,
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
