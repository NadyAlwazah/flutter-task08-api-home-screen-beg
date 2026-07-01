import 'package:bloc/bloc.dart';
import 'package:flutter_task08_api_home_screen_beg/core/services/api_services.dart';
import 'package:flutter_task08_api_home_screen_beg/features/home/data/models/product_model.dart';
import 'package:meta/meta.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductStates> {
  ProductCubit() : super(ProductInitialState());

  Future<void> getProducts() async {
    emit(ProductLoadingState());

    try {
      final data = await ApiServices.getData("/products");

      //! ProductModel الى Map تحويل ال
      final List<ProductModel> products = (data as List)
          .map((item) => ProductModel.fromMap(item))
          .toList();

      emit(ProductSuccessState(products));
    } catch (e) {
      emit(ProductErrorState(e.toString()));
    }
  }
}
