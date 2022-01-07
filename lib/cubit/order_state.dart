part of 'order_cubit.dart';

@immutable
abstract class OrderState {}

class OrderInitial extends OrderState {}

class OrderUpdated extends OrderState {
  final int count;
  OrderUpdated(this.count);
}
