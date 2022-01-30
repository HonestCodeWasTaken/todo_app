class BirthdayPerson {
  final String name;
  final String description;
  final int price;
  final String image;
  BirthdayPerson(this.name, this.description, this.price, this.image);

  static List<BirthdayPerson> getProducts() {
    List<BirthdayPerson> items = <BirthdayPerson>[];

    items.add(BirthdayPerson(
        "Pixel",
        "Pixel is the most feature-full phone ever",
        800,
        "https://source.unsplash.com/random/800x600?house"));
    items.add(BirthdayPerson(
        "Laptop",
        "Laptop is most productive development tool",
        2000,
        "https://source.unsplash.com/random/800x600?house"));
    items.add(BirthdayPerson(
        "Tablet",
        "Tablet is the most useful device ever for meeting",
        1500,
        "https://source.unsplash.com/random/800x600?house"));
    items.add(BirthdayPerson("Pendrive", "Pendrive is useful storage medium",
        100, "https://source.unsplash.com/random/800x600?house"));
    items.add(BirthdayPerson(
        "Floppy Drive",
        "Floppy drive is useful rescue storage medium",
        20,
        "https://source.unsplash.com/random/800x600?house"));
    return items;
  }
}
