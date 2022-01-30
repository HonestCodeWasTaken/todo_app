class BirthdayPerson {
  final String name;
  final String description;
  final int price;
  final String image;
  BirthdayPerson(this.name, this.description, this.price, this.image);

  static List<BirthdayPerson> getProducts() {
    List<BirthdayPerson> items = <BirthdayPerson>[];

    items.add(BirthdayPerson("Pixel",
        "Pixel is the most feature-full phone ever", 800, "pixel.png"));
    items.add(BirthdayPerson("Laptop",
        "Laptop is most productive development tool", 2000, "laptop.png"));
    items.add(BirthdayPerson(
        "Tablet",
        "Tablet is the most useful device ever for meeting",
        1500,
        "tablet.png"));
    items.add(BirthdayPerson(
        "Pendrive", "Pendrive is useful storage medium", 100, "pendrive.png"));
    items.add(BirthdayPerson("Floppy Drive",
        "Floppy drive is useful rescue storage medium", 20, "floppy.png"));
    return items;
  }
}
