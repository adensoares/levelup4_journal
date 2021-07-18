import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:journal/src/shared/constants/app_colors.dart';
import 'package:journal/src/shared/constants/dropdown_item_data.dart';
import 'package:journal/src/shared/widgets/custom_icon_widget.dart';
import 'package:journal/src/shared/widgets/custom_text_form_field_widget.dart';

class NewNotePage extends StatefulWidget {
  const NewNotePage({Key? key}) : super(key: key);

  @override
  _NewNotePageState createState() => _NewNotePageState();
}

class _NewNotePageState extends State<NewNotePage> {
  late DropDownItemData _value = DropDownItemData(
    color: AppColors.pink,
    value: "pink",
  );

  @override
  void initState() {
    _value = list[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              "assets/images/newNote_journal.png",
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 270.0,
                    child: CustomTextFormField(
                      hintText: "Título",
                    ),
                  ),
                  DropdownButton(
                    underline: Container(),
                    onChanged: (value) {
                      setState(() {
                        _value = value as DropDownItemData;
                      });
                    },
                    value: _value,
                    selectedItemBuilder: (BuildContext context) {
                      return list.map<Widget>((DropDownItemData item) {
                        return Center(
                          child: Container(
                            height: 18.0,
                            width: 18.0,
                            decoration: BoxDecoration(
                              color: _value.color,
                              shape: BoxShape.circle,
                            ),
                          ),
                        );
                      }).toList();
                    },
                    items: list
                        .map(
                          (e) => DropdownMenuItem(
                            value: e,
                            child: Center(
                              child: Container(
                                height: 18.0,
                                width: 18.0,
                                decoration: BoxDecoration(
                                  color: e.color,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Container(
                child: CustomTextFormField(
                  minLines: 1,
                  keyboardType: TextInputType.multiline,
                  hintText: "Digite aqui...",
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  gradient: AppColors.lightPurpleWhite,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(
          bottom: 16.0,
          left: 32.0,
          right: 32.0,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomIcon(
                  icon: Icons.date_range,
                ),
                CustomIcon(
                  icon: Icons.attach_file,
                ),
                CustomIcon(
                  icon: Icons.favorite_border,
                ),
                CustomIcon(
                  icon: Icons.share,
                ),
                CustomIcon(
                  icon: Icons.delete,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
