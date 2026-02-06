import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChallengeInfo extends StatelessWidget {
  const ChallengeInfo();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         
          const SizedBox(height: 16),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              _InfoItem(title: 'Deadline', value: '30 days left'),
               SizedBox(height: 16.h),
              _InfoItem(title: 'Prize', value: '\$100.00'),
            ],
          ),
        ],
      ),
    );
  }
}

class _InfoItem extends StatelessWidget {
  final String title;
  final String value;

  const _InfoItem({
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Color(0xffF1F1FE),
        borderRadius: BorderRadius.circular(8)
      ),
     child: ListTile(
      title: Text(title),
      trailing: Text(value),

     ),
    );
  }
}
