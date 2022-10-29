import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (exchangeModel != null) {
      return const ExchangeWidget();
    }
    return SearchWidget();
  }
}

class ExchangeWidget extends StatelessWidget {
  const ExchangeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Text('from'),
          Text('result'),
        ],
      ),
    );
  }
}

class SearchWidget extends StatelessWidget {
  SearchWidget({
    Key? key,
  }) : super(key: key);
  final _fromcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Currency Exchange'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Row(
          children: [
            TextField(
              controller: _fromcontroller,
            ),
            ElevatedButton(onPressed: () {}, child: const Text('Get')),
          ],
        ),
      ),
    );
  }
}
