import 'package:flutter/material.dart';
import 'package:my_ecommerce/provider/launch_url_provider.dart';
import 'package:provider/provider.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "Search ",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Consumer<LaunchUrlProvider>(
          builder: (context, provider, child) {
            return Center(
              child: TextButton.icon(
                onPressed: provider.launchUrls,
                icon: const Icon(
                  Icons.insert_link_rounded,
                  color: Colors.red,
                ),
                label: const Text(
                  "Go to Google",
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          },
        ));
  }
}
