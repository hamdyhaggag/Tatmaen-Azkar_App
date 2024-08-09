import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tatmaen/Business_Logic/Cubit/azkar_cubit.dart';
import 'package:tatmaen/Business_Logic/Cubit/azkar_state.dart';
import 'package:tatmaen/Presentation/Widgets/Azkar/AzkarProgressIndicator.dart';

class UpdateHeader extends StatelessWidget {
  final double screenWidth;

  const UpdateHeader({super.key, required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AzkarCubit, AzkarState>(
      builder: (context, state) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Display progress here
              AzkarProgressIndicator(
                screenWidth: screenWidth,
                screenHeight: MediaQuery.of(context).size.height,
                azkar: const [], // Pass the actual azkar list here
              ),
              // Display check icon state or other information
              // For example:
              Icon(
                state.completedCards > 0 ? Icons.check_circle : Icons.circle,
                color: Colors.green,
              ),
            ],
          ),
        );
      },
    );
  }
}
