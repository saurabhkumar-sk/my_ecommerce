import 'package:flutter/material.dart';
import 'package:my_ecommerce/database/database.dart';

//HomeScreen
class TextWidget extends StatefulWidget {
  const TextWidget({
    super.key,
  });

  @override
  State<TextWidget> createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 22, top: 17),
      child: Row(
        children: [
          Text(
            'All Featured',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),
          Padding(
            padding: EdgeInsets.only(left: 79),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(6)),
              ),
              color: MyColors.primarywhite,
              // height: 24,
              // width: 67,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Row(
                  children: [
                    Text(
                      'Sort ',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                    ),
                    Icon(
                      Icons.import_export,
                      size: 16,
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(6)),
              ),
              color: MyColors.primarywhite,
              // height: 24,
              // width: 67,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Row(
                  children: [
                    Text(
                      'Filter',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                    ),
                    Icon(
                      Icons.filter_alt_outlined,
                      size: 16,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//favorite screen
class TextWidgets extends StatefulWidget {
  const TextWidgets({
    super.key,
  });

  @override
  State<TextWidgets> createState() => _TextWidgetsState();
}

class _TextWidgetsState extends State<TextWidgets> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 22, top: 17),
      child: Row(
        children: [
          Text(
            '52,082+ Items',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),
          Padding(
            padding: EdgeInsets.only(left: 62),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(6)),
              ),
              color: MyColors.primarywhite,
              // height: 24,
              // width: 67,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Row(
                  children: [
                    Text(
                      'Sort ',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                    ),
                    Icon(
                      Icons.import_export,
                      size: 16,
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12, right: 15),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(6)),
              ),
              color: MyColors.primarywhite,
              // height: 24,
              // width: 67,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Row(
                  children: [
                    Text(
                      'Filter',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                    ),
                    Icon(
                      Icons.filter_alt_outlined,
                      size: 16,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
