class Recipes {
  String title;
  String description;
  String calories;
  String cookTime;
  String starRating;
  String imageAsset;
  List<String> ingredients;

  Recipes(
      {required this.title,
      required this.description,
      required this.calories,
      required this.cookTime,
      required this.starRating,
      required this.imageAsset,
      required this.ingredients});
}

var recipeList = [
  Recipes(
      title: 'Nasi Goreng Jawa',
      description:
          'Hidangan nasi goreng klasik dengan bumbu bawang merah, bawang putih, cabai, terasi, kecap manis, dan telur.',
      calories: '380 kkal',
      cookTime: '30 menit',
      starRating: '4.5',
      imageAsset: 'images/nasi-goreng-jawa.jpg',
      ingredients: [
        '300 gram nasi putih',
        '2 butir telur',
        '100 gram ayam, suwir-suwir',
        '50 gram bakso, iris tipis',
        '2 sdm kecap manis',
        '1 sdm bawang merah goreng',
        '1 sdm bawang putih goreng',
        '1 sdm acar',
        'Garam, gula, dan merica secukupnya'
      ]),
  Recipes(
      title: 'Rendang Padang',
      description:
          'Hidangan daging sapi yang dimasak dengan bumbu rempah-rempah khas Padang selama berjam-jam, menghasilkan tekstur yang empuk dan rasa yang kaya.',
      calories: '480 kkal',
      cookTime: '3-4 jam',
      starRating: '4.8',
      imageAsset: 'images/rendang.jpg',
      ingredients: [
        '1 kg daging sapi',
        '1 liter santan kelapa',
        '100 gram cabai merah giling',
        '50 gram bawang merah giling',
        '50 gram bawang putih giling',
        '25 gram jahe giling',
        '25 gram lengkuas giling',
        '2 batang serai, geprek',
        '5 lembar daun jeruk',
        '2 lembar daun salam',
        'Garam, gula, dan merica secukupnya',
      ]),
  Recipes(
      title: 'Sate Ayam Madura',
      description:
          'Sate ayam yang dimarinasi dengan bumbu kacang dan santan, kemudian dibakar dengan arang.',
      calories: '350 kkal',
      cookTime: '45 menit',
      starRating: '4.7',
      imageAsset: 'images/sate-ayam-madura.jpg',
      ingredients: [
        '500 gram daging ayam, potong dadu',
        '200 gram bumbu kacang',
        '100 gram kecap manis',
        '50 gram bawang merah goreng',
        '50 gram bawang putih goreng',
        '1 sdm ketumbar bubuk',
        '1 sdt jintan bubuk',
        'Garam, gula, dan merica secukupnya'
      ]),
  Recipes(
      title: 'Soto Betawi',
      description:
          'Sup daging sapi dengan kuah santan yang gurih dan kaya rempah-rempah, dilengkapi dengan jeroan, kentang goreng, dan emping.',
      calories: '400 kkal',
      cookTime: '1-2 jam',
      starRating: '4.4',
      imageAsset: 'images/soto-betawi.jpeg',
      ingredients: [
        '500 gram daging sapi',
        '200 gram jeroan sapi',
        '2 liter santan kelapa',
        '100 gram kentang, potong dadu',
        '50 gram bawang merah giling',
        '50 gram bawang putih giling',
        '25 gram jahe giling',
        '25 gram lengkuas giling',
        '2 batang serai, geprek',
        '5 lembar daun jeruk',
        '2 lembar daun salam',
        'Garam, gula, dan merica secukupnya'
      ]),
  Recipes(
      title: 'Gudeg Yogyakarta',
      description:
          'Hidangan nangka muda yang dimasak dengan santan dan gula merah, menghasilkan rasa manis dan gurih yang unik.',
      calories: '300 kkal',
      cookTime: '2-3 jam',
      starRating: '4.6',
      imageAsset: 'images/gudeg.jpg',
      ingredients: [
        '1 kg nangka muda, potong-potong',
        '1 liter santan kelapa',
        '200 gram gula merah',
        '100 gram bawang merah giling',
        '50 gram bawang putih giling',
        '25 gram jahe giling',
        '25 gram lengkuas giling',
        '2 batang serai, geprek',
        '5 lembar daun jeruk',
        '2 lembar daun salam',
        'Garam, gula, dan merica secukupnya'
      ]),
  Recipes(
      title: 'Pepes Ikan Mas',
      description:
          'Ikan mas yang dibungkus dengan daun pisang dan dimasak dengan bumbu rempah-rempah, menghasilkan aroma dan rasa yang khas.',
      calories: '250 kkal',
      cookTime: '45-60 menit',
      starRating: '4.6',
      imageAsset: 'images/pepes-ikan-mas.jpg',
      ingredients: [
        '1 ekor ikan mas, bersihkan',
        '100 gram bumbu pepes',
        '2 lembar daun pisang',
        'Garam, gula, dan merica secukupnya'
      ]),
  Recipes(
      title: 'Bakso Malang',
      description:
          'Bakso daging sapi dengan kuah kaldu yang gurih, dilengkapi dengan pangsit goreng, mie kuning, bihun, dan taoge.',
      calories: '400 kkal',
      cookTime: '30-45 menit',
      starRating: '4.5',
      imageAsset: 'images/bakso-malang.webp',
      ingredients: [
        '500 gram daging sapi giling',
        '100 gram tepung tapioka',
        '1 butir telur ayam',
        '1 siung bawang putih, haluskan',
        '1 sdt garam',
        '1/2 sdt lada',
        '1 liter air',
        '1 batang serai, geprek',
        '2 lembar daun salam',
        '1 ruas lengkuas, geprek',
        '1 sdm bawang merah goreng',
        '1 sdm irisan daun bawang',
        '1 sdm irisan seledri'
      ]),
  Recipes(
      title: 'Pempek Palembang',
      description:
          'Kue ikan yang terbuat dari adonan ikan tenggiri dan tepung sagu, kemudian digoreng dan disajikan dengan cuko pedas manis.',
      calories: '200 kkal',
      cookTime: '30-45 menit',
      starRating: '4.7',
      imageAsset: 'images/pempek.webp',
      ingredients: [
        '500 gram ikan tenggiri giling',
        '250 gram tepung sagu',
        '200 ml air',
        '1 butir telur ayam',
        '1 siung bawang putih, haluskan',
        '1 sdt garam',
        '1/2 sdt lada',
        'Minyak goreng secukupnya'
      ]),
  Recipes(
      title: 'Coto Makassar',
      description:
          'Sup daging sapi dengan kuah kaldu yang kental dan kaya rempah-rempah, dilengkapi dengan ketupat dan sambal terasi.',
      calories: '400 kkal',
      cookTime: '2-3 jam',
      starRating: '4.4',
      imageAsset: 'images/coto-makassar.jpg',
      ingredients: [
        '1 kg daging sapi, potong-potong',
        '1 liter air',
        '250 gram ketupat',
        '2 sdm bawang merah goreng',
        '2 sdm irisan daun bawang',
        '2 sdm irisan seledri',
        '1 sdm sambal terasi',
        'Garam dan lada secukupnya'
      ]),
  Recipes(
      title: 'Ayam Betutu Bali',
      description:
          'Ayam utuh yang dibumbui dengan rempah-rempah khas Bali dan dipanggang dengan api kecil, menghasilkan tekstur yang empuk dan rasa yang kaya.',
      calories: '450 kkal',
      cookTime: '2-3 jam',
      starRating: '4.8',
      imageAsset: 'images/ayam-betutu.jpg',
      ingredients: [
        '1 ekor ayam utuh, bersihkan',
        '200 gram bumbu betutu',
        '100 ml minyak kelapa',
        '2 lembar daun pisang',
        '1 batang serai, geprek',
        '2 lembar daun salam',
        '1 ruas lengkuas, geprek',
        'Garam dan lada secukupnya'
      ])
];
