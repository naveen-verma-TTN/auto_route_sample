import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'order_state.dart';

class OrderCubit extends Cubit<OrderState> {
  int count = 0;

  OrderCubit() : super(OrderInitial());

  void updateCount() {
    emit(OrderUpdated(++count));
  }
}
