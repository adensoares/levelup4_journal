import 'package:flutter/material.dart';
import 'package:journal/src/features/home/home_controller.dart';
import 'package:journal/src/features/new_note/new_note_page.dart';
import 'package:journal/src/features/note_list/note_list_page.dart';
import 'package:journal/src/shared/constants/app_colors.dart';
import 'package:journal/src/shared/constants/app_text_styles.dart';
import 'package:journal/src/shared/widgets/add_button_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: controller.notes.length == 0
          ? Scaffold(
              body: Stack(
                children: [
                  Image.asset(
                    "assets/images/empty_note_list_background.png",
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: MediaQuery.of(context).size.height / 2.5,
                      decoration: BoxDecoration(
                        gradient: AppColors.lightPurpleWhite,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(45.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: Text(
                                "Não importa onde você esteja! Guarde suas ideias para depois ;)",
                                style: AppTextStyles.darkPurple24w400Roboto,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 24.0,
                                left: 16.0,
                              ),
                              child: Text(
                                "Comece agora a criar as suas notas!",
                                style: AppTextStyles.cyan16w400Roboto,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerFloat,
              floatingActionButton: AddButton(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      // builder: (BuildContext context) => NewNotePage(),
                      builder: (BuildContext context) => NoteListPage(),
                    ),
                  );
                },
              ),
            )
          : NoteListPage(),
    );
  }
}
