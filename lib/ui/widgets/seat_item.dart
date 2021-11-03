import 'package:flutter/material.dart';
import 'package:hai_air/cubit/seat_cubit.dart';
import 'package:hai_air/shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeatItem extends StatelessWidget {
  final bool isAvailable;
  final String id;

  const SeatItem({
    Key? key,
    required this.id,
    this.isAvailable = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSelected = context.watch<SeatCubit>().isSelected(id);

    backgroundColor() {
      if(!isAvailable){
        return kUnavailableColor;
      } else {
        if(isSelected) {
          return kPrimaryColor;
        } else {
          return kUnavailableColor;
        }
      }
    }

    borderColor() {
      if(!isAvailable){
        return kUnavailableColor;
      } else {
        return kPrimaryColor;
      }
    }

    child() {
      if(isSelected){
          return Center(
            child: Text(
              'YOU',
              style: whiteTextStyle.copyWith(
                fontSize: 14,
                fontWeight: semiBold,
              ),
            ),
          );
      } else{
        return const SizedBox();
      }
    }

    return GestureDetector(
      onTap: (){
        if(isAvailable) {
          context.read<SeatCubit>().selectSeat(id);
        }
      },
      child: Container(
        height: 48,
        width: 48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            width: 2,
            color: borderColor(),
          ),
          color: backgroundColor(),
        ),
        child: child(),
      ),
    );
  }
}
