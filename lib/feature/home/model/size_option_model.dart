class SizeOptionModel{
  final String name;
  final String quantity;

  SizeOptionModel({
    required this.name,
    required this.quantity
  });
}


final List<SizeOptionModel> sizeOptions = [
  SizeOptionModel(name: 'Tall', quantity: '12'),
  SizeOptionModel(name: 'Grande', quantity: '16'),
  SizeOptionModel(name: 'Vent', quantity: '24'),
  SizeOptionModel(name: 'Custom', quantity: '...'),
];