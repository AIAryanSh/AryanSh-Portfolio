class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? gitHubLink;
  final String? AndroidLink;
  final String? iosLink;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.gitHubLink,
    required this.AndroidLink,
    required this.iosLink,
  });
}

List<ProjectUtils> personalProjects = [
  ProjectUtils(
    image: "assets/Personal Projects/Chitramaya.png",
    title: "Chitramaya",
    subtitle: "Your movie buddy. Explore, discuss, and enjoy films with our easy-to-use chatbot.",
    gitHubLink: "https://github.com/AIAryanSh/Chitramaya.git",
    AndroidLink: " ",
    iosLink: " "
  ),
  ProjectUtils(
    image: "assets/Personal Projects/Facial Recognition.png",
    title: "Emotiscan",
    subtitle: "Flutter app for real-time emotion recognition. Uses TensorFlow Lite for on-device ML. Sleek design, customizable, cross-platform.",
    gitHubLink: "https://github.com/AIAryanSh/EmotiScan.git",
     AndroidLink: " ",
    iosLink: " "
  ),
  ProjectUtils(
    image: "assets/Personal Projects/Vogue Hub.png",
    title: "Vogue Hub",
    subtitle: "Your go-to destination for tech products and trendy clothing, all in one sleek Flutter app.",
    gitHubLink: "https://github.com/AIAryanSh/Vogue-Hub.git",
     AndroidLink: " ",
    iosLink: " "
  ),
  ProjectUtils(
    image: "assets/Personal Projects/Doctor Consultation app.png",
    title: "Heal Sphere",
    subtitle: "Flutter app with intuitive UI for self-assessment, symptom tracking, and virtual doctor consultations. Your health, simplified.",
    gitHubLink: "https://github.com/AIAryanSh/HealSphere.git",
     AndroidLink: " ",
    iosLink: " "
  ),
  ProjectUtils(
    image: "assets/Personal Projects/Chess.png",
    title: "Chess",
    subtitle: "Chess game app built with Dart and Flutter featuring AI opponent with random move generation.",
    gitHubLink: "https://github.com/AIAryanSh/Flutter-Chess.git",
     AndroidLink: " ",
    iosLink: " "
  ),
];

List<ProjectUtils> professionalProjects = [
  ProjectUtils(
    image: "assets/Professional Project/Vanshavali.jpeg",
    title: "Vanshavali",
    subtitle: "Vanshavali: A Flutter app for gathering family data and visualizing it in an intuitive tree structure.",
    gitHubLink: "",
     AndroidLink: "",
    iosLink: ""
  ),
];
