import 'package:flutter/material.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({super.key, required this.onChanged});

  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      // margin: EdgeInsets.only(left: 30.w, right: 30.w),
      decoration: BoxDecoration(
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(14),
          boxShadow: const [
            BoxShadow(
                color: Color(0x29000000), offset: Offset(0, 3), blurRadius: 12)
          ]),
      child: TextFormField(
        onChanged: (String val) {
          onChanged(val);
        },
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: '输入关键字',
            hintStyle: TextStyle(
                fontFamily: 'Popins', fontSize: 20, color: Color(0xff949494))),
      ),
    );
  }
}
