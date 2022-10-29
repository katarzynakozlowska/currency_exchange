import 'package:currency_exchange/core/enums.dart';
import 'package:currency_exchange/features/cubit/exchange_cubit.dart';
import 'package:currency_exchange/models/exchange_model.dart';
import 'package:currency_exchange/repositories/exchange_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);
//Scaffold wrapujemy w blocbuilder i blocprovider
//BlocBuilder wrapujemy w listener
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ExchangeCubit(ExchangeRepository()),
      child: BlocListener<ExchangeCubit, ExchangeState>(
        listener: (context, state) {
          if (state.status == Status.error) {
            final errorMessage = state.errorMessage ?? 'Unknown error';
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(errorMessage),
              backgroundColor: Colors.red,
            ));
          }
        },
        child: BlocBuilder<ExchangeCubit, ExchangeState>(
          builder: (context, state) {
            //tworzymy nową zmienną i przekazujemy nasz model ze state
            final exchangeModel = state.model;
            return Scaffold(
              //pierwszego returna wrapujemy w builder zeby wypisać warunki
              appBar: AppBar(title: const Text('Currency Exchange')),
              body: Builder(builder: (context) {
                //posługujemy się zmiennymi ze state
                if (state.status == Status.loading) {
                  return const Center(
                      child: CircularProgressIndicator(
                    color: Colors.green,
                  ));
                }
                if (exchangeModel == null) {
                  return SearchWidget();
                }
                return ExchangeWidget(
                  exchangeModel: exchangeModel,
                );
              }),
            );
          },
        ),
      ),
    );
  }
}

class ExchangeWidget extends StatelessWidget {
  const ExchangeWidget({
    Key? key,
    required this.exchangeModel,
  }) : super(key: key);
  //musimy stworzyć nową zmienną, która dostarczy nasz model
  final ExchangeModel exchangeModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(exchangeModel.from,
              style: Theme.of(context).textTheme.headline1),
          Text(
            exchangeModel.result.toString(),
            style: Theme.of(context).textTheme.headline2,
          ),
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
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: _fromcontroller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Currency'),
                    hintText: 'EUR'),
              ),
            ),
            ElevatedButton(
                //przekazujemy naszą metodę z cubita
                onPressed: () {
                  context
                      .read<ExchangeCubit>()
                      .getExchangeRate(from: _fromcontroller.text);
                },
                child: const Text('Get')),
          ],
        ),
      ),
    );
  }
}
