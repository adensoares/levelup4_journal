import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:journal/src/features/home/home_controller.dart';
import 'package:journal/src/shared/constants/app_colors.dart';
import 'package:journal/src/shared/widgets/custom_icon_widget.dart';
import 'package:journal/src/shared/widgets/custom_text_form_field_widget.dart';
import 'package:journal/src/shared/widgets/note_card_widget.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({Key? key}) : super(key: key);

  @override
  _NotesPageState createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
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
                thumbColor: Colors.blue,
                isAlwaysShown: true,
                thickness: 8,
                radius: Radius.circular(20),
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 16.0,
                  ),
                  child: StaggeredGridView.countBuilder(
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
      floatingActionButton: Container(
        width: 56.0,
        height: 56.0,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: AppColors.addNoteButtonGradient,
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 1),
                blurRadius: 18.0,
                spreadRadius: 0,
                color: Color.fromRGBO(0, 0, 0, 0.12),
              ),
              BoxShadow(
                offset: Offset(0, 6),
                blurRadius: 10.0,
                spreadRadius: 0,
                color: Color.fromRGBO(0, 0, 0, 0.14),
              ),
              BoxShadow(
                offset: Offset(0, 3),
                blurRadius: 5.0,
                spreadRadius: -1,
                color: Color.fromRGBO(0, 0, 0, 0.2),
              ),
            ]),
        child: Center(
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
