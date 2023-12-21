import 'dart:js';

import 'package:flutter_provider/counter_app/provider_counter/counter_provider.dart';
import 'package:flutter_provider/ecommerce/model/cart_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

final List<SingleChildWidget> providerList = <SingleChildWidget>[
  ChangeNotifierProvider(create: (context) => Counter()),
  ChangeNotifierProvider(create: (context)=> CartModel())
];
