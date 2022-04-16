class IDCard {
  final String image, name, addres, position, age, startwork, email;

  IDCard({
    required this.image,
    required this.name,
    required this.addres,
    required this.position,
    required this.age,
    required this.startwork,
    required this.email,
  });
}

List<IDCard> detailId = [
  IDCard(
      image: "assets/img/hendy.png",
      name: "Hendy Nurfrianto",
      addres: "Jl. Balad",
      position: "System and Apps Developer",
      age: "28",
      startwork: "2019",
      email: "hendyn25@gmail.com")
];
