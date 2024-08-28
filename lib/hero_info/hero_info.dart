class HeroInfo{
  final String title;
  final String subtitle;
  final String image;

  HeroInfo({required this.title,required this.subtitle,required this.image});

}
class Heroitem {
  List<HeroInfo> item = [
    HeroInfo(title: "Asif Raza",subtitle: "Cricket player", image: "assets/images/cricket.png"),
    HeroInfo(title: "Asif Raza",subtitle: "Football player", image: "assets/images/foot.jpg"),
    HeroInfo(title: "Asif Raza",subtitle: "voleyball player", image: "assets/images/voleval.jpg"),
    HeroInfo(title: "Asif Raza",subtitle: "hockey player", image: "assets/images/hocky.jpg"),

  ];
}