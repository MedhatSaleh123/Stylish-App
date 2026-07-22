import 'package:flutter/material.dart';

class AddAddressCard extends StatelessWidget {
  const AddAddressCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          // TODO: Navigate to Add Address Screen
        },
        borderRadius: BorderRadius.circular(10),
        child: Ink(
          height: 90,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: const Center(
            child: CircleAvatar(
              radius: 18,
              backgroundColor: Color(0xffF5F5F5),
              child: Icon(Icons.add, color: Colors.black, size: 22),
            ),
          ),
        ),
      ),
    );
  }
}
