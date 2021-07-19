import 'package:journal/src/models/note_model.dart';
import 'package:journal/src/shared/constants/app_colors.dart';

class HomeController {
  List<Note> notes = [
    Note(
      title: "Não Esquecer",
      description:
          "Lorem ipsum dolor sit amet, consecter adipiscing elit, sed  incididunt ut labore et dolore aliqua.",
      date: "18/07/2021",
      color: AppColors.pink,
      hasDate: true,
      hasFile: true,
      isFavorite: true,
    ),
    Note(
      title: "Reunião com os stakeholders",
      description:
          "Lorem ipsum dolor sit amet, consecter adipiscing elit, sed  incididunt ut labore et dolore aliqua.",
      date: "18/07/2021",
      color: AppColors.green,
      hasDate: false,
      hasFile: true,
      isFavorite: false,
    ),
    Note(
      title: "Lembretes para o médico",
      description:
          "Lorem ipsum dolor sit amet, consecter adipiscing elit, sed  incididunt ut labore et dolore aliqua.",
      date: "18/07/2021",
      color: AppColors.purple,
      hasDate: true,
      hasFile: true,
      isFavorite: true,
    ),
    Note(
      title: "Ideias para o novo app 2022",
      description:
          "Lorem ipsum dolor sit amet, consecter adipiscing elit, sed  incididunt ut labore et dolore aliqua.",
      date: "18/07/2021",
      color: AppColors.cyan,
      hasDate: false,
      hasFile: false,
      isFavorite: false,
    ),
    Note(
      title: "Reunião do grupo de treinamento",
      description:
          "Lorem ipsum dolor sit amet, consecter adipiscing elit, sed  incididunt ut labore et dolore aliqua.",
      date: "18/07/2021",
      color: AppColors.yellow,
      hasDate: true,
      hasFile: true,
      isFavorite: true,
    ),
  ];
}
