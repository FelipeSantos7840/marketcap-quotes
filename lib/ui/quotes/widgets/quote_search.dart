import 'package:flutter/material.dart';

class QuoteSearch extends StatelessWidget {
  final TextEditingController searchController;
  final Function(String) onSearch;

  const QuoteSearch({super.key, required this.searchController, required this.onSearch});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 6, 15, 37),
        borderRadius: BorderRadius.circular(4)
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: searchController,
              decoration: const InputDecoration(
                hintText: 'Ex.: BTC,ETH,SOL,BNB...',
              ),
              onSubmitted: (_) => onSearch(searchController.text),
            )
          ),
          IconButton(
            onPressed:() => onSearch(searchController.text), 
            icon: const Icon(Icons.search))
        ],
      ),
    );
  }
}
