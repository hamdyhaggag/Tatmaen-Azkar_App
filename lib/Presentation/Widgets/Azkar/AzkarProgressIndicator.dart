import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tatmaen/Business_Logic/Cubit/azkar_cubit.dart';
import 'package:tatmaen/Business_Logic/Cubit/azkar_state.dart';

class AzkarProgressIndicator extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  final List<String> azkar;

  const AzkarProgressIndicator({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
    required this.azkar,
  });

  @override
  Widget build(BuildContext context) {
    // Set the total cards count in the state
    BlocProvider.of<AzkarCubit>(context).updateTotalCards(azkar.length);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
      child: BlocBuilder<AzkarCubit, AzkarState>(
        builder: (context, state) {
          final progress = state.progress;
          return Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationY(pi),
                  child: LinearProgressIndicator(
                    value: progress,
                    backgroundColor: Colors.grey[300],
                    color: Colors.blue,
                    minHeight: screenWidth * 0.025,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(screenWidth * 0.04),
                child: Text(
                  'أكملت %${(progress * 100).round()}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: screenWidth * 0.045,
                    fontFamily: 'DIN',
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
