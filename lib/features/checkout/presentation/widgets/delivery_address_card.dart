import 'package:flutter/material.dart';

class DeliveryAddressCard extends StatelessWidget {
  const DeliveryAddressCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Header
          Row(
            children: [
              Text(
                "Address",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
              ),
              Spacer(),
              Icon(Icons.edit_calendar, color: Colors.black, size: 20),
            ],
          ),

          SizedBox(height: 3),

          Text(
            "216 St Paul's Rd,London N1 2LL, UK",
            style: TextStyle(fontSize: 13, color: Colors.black, height: 1.5),
          ),

          SizedBox(height: 3),

          Text(
            "Contact : +44-784232",
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
