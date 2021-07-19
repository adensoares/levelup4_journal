import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:journal/src/features/home/home_controller.dart';
import 'package:journal/src/features/new_note/new_note_page.dart';
import 'package:journal/src/shared/constants/app_colors.dart';
import 'package:journal/src/shared/widgets/add_button_widget.dart';
import 'package:journal/src/shared/widgets/custom_icon_widget.dart';
import 'package:journal/src/shared/widgets/custom_text_form_field_widget.dart';
import 'package:journal/src/shared/widgets/note_card_widget.dart';

class NoteListPage extends StatefulWidget {
  const NoteListPage({Key? key}) : super(key: key);

  @override
  _NoteListPageState createState() => _NoteListPageState();
}

class _NoteListPageState extends State<NoteListPage> {
  HomeController controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: Container(
          decoration: BoxDecoration(
            gradient: AppColors.blueGradientHeader,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                "assets/images/Notes_journal.png",
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 50.0,
              right: 56.0,
              top: 16.0,
            ),
            child: CustomTextFormField(
              hintText: "Pesquisar",
              fontWeight: FontWeight.w400,
              suffixIcon: CustomIcon(
                icon: Icons.search,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: RawScrollbar(
                thumbColor: Color.fromRGBO(175, 172, 243, 0.7),
                isAlwaysShown: true,
                thickness: 8,
                radius: Radius.circular(20),
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 16.0,
                  ),
                  child: StaggeredGridView.countBuilder(
                    physics: BouncingScrollPhysics(),
                    crossAxisCount: 4,
                    itemCount: controller.notes.length,
                    itemBuilder: (BuildContext context, int index) =>
                        GestureDetector(
                      onTap: () {},
                      child: NoteCard(
                        title: controller.notes[index].title,
                        description: controller.notes[index].description,
                        date: controller.notes[index].date,
                        color: controller.notes[index].color,
                        hasDate: controller.notes[index].hasDate,
                        hasFile: controller.notes[index].hasFile,
                        isFavorite: controller.notes[index].isFavorite,
                      ),
                    ),
                    staggeredTileBuilder: (int index) => StaggeredTile.fit(2),
                    mainAxisSpacing: 4,
                    crossAxisSpacing: 4,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: AddButton(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) => NewNotePage(),
            ),
          );
        },
      ),
    );
  }
}
