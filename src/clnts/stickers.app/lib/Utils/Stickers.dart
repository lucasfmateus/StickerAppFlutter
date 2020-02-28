
class Sticker
{
  final String name;
  const Sticker({this.name});
}

const List<Sticker> items =  const<Sticker>[
  const Sticker(name: 'assets/images/dori.png'),
  const Sticker(name: 'assets/images/ameno.jpg'),
  const Sticker(name: 'assets/images/frog.gif'),
  const Sticker(name: 'assets/images/dorime.jpg'),
];

class Packeage
{
  final String Id;
  final String Icon;
  final String Title;
  final String Author;
  final int Count;
  final bool Active;
  final DateTime CreateAt;
  final List<Sticker> Stickers;
  final String First;
  final String Second;
  final String Third;

  const Packeage({this.Id, this.Icon, this.Author, this.Count, this.Title, this.Active, this.CreateAt, this.Stickers, this.First, this.Second, this.Third});
}
