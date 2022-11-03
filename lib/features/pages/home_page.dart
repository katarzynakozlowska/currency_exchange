import 'package:currency_exchange/core/enums.dart';
import 'package:currency_exchange/data_source/remote_data_source.dart';
import 'package:currency_exchange/features/cubit/exchange_cubit.dart';
import 'package:currency_exchange/models/exchange_model.dart';
import 'package:currency_exchange/repositories/exchange_repository.dart';
import 'package:dio/dio.dart';
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
      create: (context) => ExchangeCubit(
          exchangeRepository:
              ExchangeRepository(ExchangeRetrofitDataSource(Dio()))),
      child: BlocConsumer<ExchangeCubit, ExchangeState>(
        listener: (context, state) {
          if (state.status == Status.error) {
            final errorMessage = state.errorMessage ?? 'Unknown error';
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(errorMessage),
              backgroundColor: Colors.red,
            ));
          }
        },
        builder: (context, state) {
          //tworzymy nową zmienną i przekazujemy nasz model ze state
          final exchangeModel = state.model;
          return Scaffold(
            //pierwszego returna wrapujemy w builder zeby wypisać warunki
            appBar: AppBar(title: const Text('Currency Exchange')),
            body: Center(
              child: Builder(builder: (context) {
                //posługujemy się zmiennymi ze state
                if (state.status == Status.loading) {
                  return const Center(
                      child: CircularProgressIndicator(
                    color: Colors.green,
                  ));
                }
                if (exchangeModel == null) {
                  return Scaffold(
                    body: SearchWidget(),
                  );
                } else {
                  return Scaffold(
                    body: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ExchangeWidget(exchangeModel: exchangeModel),
                          SearchWidget(),
                        ],
                      ),
                    ),
                  );
                }
              }),
            ),
          );
        },
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
    return BlocBuilder<ExchangeCubit, ExchangeState>(
      builder: (context, state) {
        return Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(exchangeModel.from,
                      style: Theme.of(context).textTheme.headline2),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Text('to', style: Theme.of(context).textTheme.headline5),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    exchangeModel.to,
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ],
              ),
              Text(
                exchangeModel.result.toString(),
                style: Theme.of(context).textTheme.headline2,
              ),
            ],
          ),
        );
      },
    );
  }
}

class SearchWidget extends StatelessWidget {
  SearchWidget({
    Key? key,
  }) : super(key: key);
  final _fromcontroller = TextEditingController();
  final _tocontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: _fromcontroller,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('From'),
                      hintText: 'EUR'),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: _tocontroller,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('To'),
                      hintText: 'PLN'),
                ),
              ),
            ),
            ElevatedButton(
                //przekazujemy naszą metodę z cubita
                onPressed: () {
                  context.read<ExchangeCubit>().getExchangeRate(
                        from: _fromcontroller.text,
                        to: _tocontroller.text,
                      );
                },
                child: const Text('Get')),
          ],
        ),
      ),
    );
  }
}
