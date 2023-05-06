import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductInitial()) {
    // on<ProductEvent>((event, emit) {
    //   // TODO: implement event handler
    // });

    on<ProductNavtoEvent>(_productNavto);
  }

  FutureOr<void> _productNavto(
      ProductNavtoEvent event, Emitter<ProductState> emit) {
    Navigator.pop(event.context);
  }
}
