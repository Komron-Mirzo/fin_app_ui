import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../styles/colors.dart';
import 'package:fin_app_ui/styles/text_styles.dart';

class MonitoringListCard extends StatelessWidget {
  final List<ListItem> items;

  const MonitoringListCard({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // Let the ListView know how many items it needs to build.
      itemCount: items.length,
      // Provide a builder function. This is where the magic happens.
      // Convert each item into a widget based on the type of item it is.
      itemBuilder: (context, index) {
        final item = items[index];

        return ListTile(
          title: item.firstWidget(context),
          subtitle: item.secondWidget(context),
        );
      },
    );
  }
}

/// The base class for the different types of items the list can contain.
abstract class ListItem {
  /// The title line to show in a list item.
  Widget firstWidget(BuildContext context);

  /// The subtitle line, if any, to show in a list item.
  Widget secondWidget(BuildContext context);
}

/// A ListItem that contains data to display a heading.
class HeadingItem implements ListItem {
  final String heading;

  HeadingItem(this.heading);

  @override
  Widget firstWidget(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 15.0,
      ),
      height: 60.0,
      child: Row(
        children: [
          Text(
            "19.06.2022",
          ),
          Expanded(
            child: Container(),
          ),
          Text(
            "-56 500 so'm",
            style: TextStyle(
              color: AppColor.redTextColor,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget secondWidget(BuildContext context) => SizedBox.shrink();
}

/// A ListItem that contains data to display a message.
class MessageItem implements ListItem {
  final String sender;
  final String body;

  MessageItem(this.sender, this.body);

  @override
  Widget firstWidget(BuildContext context) => Row(
        children: [
          Container(
            height: 55.0,
            width: 55.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(13.0),
            ),
            child: Icon(
              FontAwesomeIcons.arrowDown,
              color: AppColor.greyTextColor,
              size: 20.0,
            ),
          ),
          const SizedBox(
            width: 15.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Tovarlar uchun to'lov",
                style: CustomTextStyle.grey12,
              ),
              Text(
                "Some Company LLC".toUpperCase(),
                style: CustomTextStyle.black14bold,
              ),
              Text("08:50"),
            ],
          ),
          Expanded(
            child: Container(),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "-6 000",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "5200002****1289",
                style: CustomTextStyle.grey12,
              ),
            ],
          ),
        ],
      );

  @override
  Widget secondWidget(BuildContext context) => Divider();
}
