import 'package:testapp/model/app_constant.dart';

class FoodModel {
  final String? name;
  final double? price;
  final String? description;
  final double? rating;
  final String? image;
  final String? servicedescription;
  FoodModel({
    this.servicedescription,
    this.name,
    this.price,
    this.description,
    this.rating,
    this.image,
  });
}

final List<FoodModel> foodlist = [
  FoodModel(
    name: " សម្លប្រហើរ",
    price: 2.50,
    description: dest,
    rating: 4.5,
    servicedescription: serdescription,
    image: "https://kohsantepheap.tv/wp-content/uploads/2019/12/8Q3A0170-1.jpg",
  ),
  FoodModel(
    name: "ឆាក្ដាមម្រេចខ្ចី",
    price: 3.50,
    description: dest,
    rating: 4.5,
    servicedescription: serdescription,
    image:
        "https://2.bp.blogspot.com/-Y08wXKoQsK0/XfDAnks5-hI/AAAAAAAAGQY/STbT9Le4CmQIunE5GjlYI0vZc9Z2LeOygCLcBGAsYHQ/s1600/a19.jpg",
  ),
  FoodModel(
    name: "កង្កែបបោក",
    price: 1.50,
    description: dest,
    rating: 4.5,
    servicedescription: serdescription,
    image:
        "https://3.bp.blogspot.com/-BGuQo8JtUcw/XfDAl94WwqI/AAAAAAAAGQE/dpZR5uwaIloCI7QoDKUKx_PhOZneJp1HACLcBGAsYHQ/s1600/a14.jpg",
  ),
  FoodModel(
    name: "គុយទាវ",
    price: 1.25,
    description: dest,
    rating: 4.5,
    servicedescription: serdescription,
    image:
        "https://3.bp.blogspot.com/-3iRozf4njJY/XfDAqkvKqWI/AAAAAAAAGQ8/_bojLTDzHLgzbNkWGSF6WRfrEq_mqMdaACLcBGAsYHQ/s1600/a27.jpg",
  ),
  FoodModel(
      name: 'Khmer Food',
      price: 1.50,
      description: dest,
      rating: 5.0,
      servicedescription: serdescription,
      image:
          'https://letsventure.weebly.com/uploads/4/7/0/4/4704418/assorted-asian-rhpinterestcom-khmer-khmer-food-names-food.jpg')
];
