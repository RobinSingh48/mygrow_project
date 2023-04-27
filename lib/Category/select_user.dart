import 'package:flutter/material.dart';

class PartnerOrPassengerDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Select your role"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
            child: Text("Partner"),
            onPressed: () {
              Navigator.of(context).pushNamed('/partnerScreen');
            },
          ),
          SizedBox(height: 16),
          ElevatedButton(
            child: Text("Passenger"),
            onPressed: () {
              Navigator.of(context).pushNamed('/passengerScreen');
            },
          ),
        ],
      ),
    );
  }
}