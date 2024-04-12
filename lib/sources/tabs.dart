import 'package:flutter/material.dart';
import 'package:news/model/sourceResponse.dart';
import 'package:news/news/news_list.dart';
import 'package:news/sources/tab_item.dart';
class tabs extends StatefulWidget {
List<Source>sourceList;

tabs({required this.sourceList});

  @override
  State<tabs> createState() => _tabsState();
}

class _tabsState extends State<tabs> {
int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length:widget.sourceList.length,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Column(
            children: [
              TabBar(
                onTap: (index){
                  selectedIndex=index;
                  setState(() {

                  });
                },
                isScrollable: true,
                indicatorColor: Colors.transparent,
                tabs:
                widget.sourceList.map((source) => tab_item(isSelected: widget.sourceList.indexOf(source)==selectedIndex ,
                    source: source)).toList()
              ,),
              Expanded(child: news_list(source: widget.sourceList[selectedIndex]))

            ],
          ),
        )
    );
  }
}
