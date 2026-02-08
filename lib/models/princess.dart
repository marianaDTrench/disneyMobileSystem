import 'package:flutter/material.dart';

class Princess {
  final String name;
  final String movie;
  final String tagline;
  final String description;
  final List<String> funFacts;
  final Color primaryColor;
  final Color secondaryColor;
  final String imagePath;

  Princess({
    required this.name,
    required this.movie,
    required this.tagline,
    required this.description,
    required this.funFacts,
    required this.primaryColor,
    required this.secondaryColor,
    required this.imagePath,
  });
}

// Princess data
final List<Princess> allPrincesses = [
  Princess(
    name: 'Snow White',
    movie: 'Snow White and the Seven Dwarfs',
    tagline: 'The Fairest of Them All',
    description: 'Snow White is the first Disney Princess, known for her kindness, gentleness, and her love for animals. She finds refuge with seven dwarfs after fleeing from her evil stepmother.',
    funFacts: [
      'First Disney Princess (1937)',
      'Known for her beautiful singing voice',
      'Has a special bond with woodland animals',
      'Her signature colors are yellow, blue, and red',
    ],
    primaryColor: Color(0xFFFFD700),
    secondaryColor: Color(0xFF4169E1),
    imagePath: 'assets/images/snow_white.jpg',
  ),
  Princess(
    name: 'Cinderella',
    movie: 'Cinderella',
    tagline: 'Dreams Come True',
    description: 'Cinderella is a kind and gentle soul who never loses hope despite her difficult circumstances. With the help of her Fairy Godmother, she attends the royal ball and captures the heart of Prince Charming.',
    funFacts: [
      'Her iconic glass slippers are one of a kind',
      'Has two mice friends named Jaq and Gus',
      'Her ball gown magically appears at midnight',
      'Symbol of hope and perseverance',
    ],
    primaryColor: Color(0xFF87CEEB),
    secondaryColor: Color(0xFFB0E0E6),
    imagePath: 'assets/images/cindrella.jpg',
  ),
  Princess(
    name: 'Aurora',
    movie: 'Sleeping Beauty',
    tagline: 'Once Upon a Dream',
    description: 'Princess Aurora, also known as Briar Rose, is graceful and kind. Cursed by Maleficent, she falls into a deep sleep that can only be broken by true love\'s kiss.',
    funFacts: [
      'Also known as Briar Rose',
      'Has three fairy godmothers',
      'Sleeps for 100 years in the story',
      'Pink and blue are her signature colors',
    ],
    primaryColor: Color(0xFFFF69B4),
    secondaryColor: Color(0xFF9370DB),
    imagePath: 'assets/images/aurora.jpg',
  ),
  Princess(
    name: 'Ariel',
    movie: 'The Little Mermaid',
    tagline: 'Part of Your World',
    description: 'Ariel is a curious and adventurous mermaid princess who dreams of living on land. She makes a deal with the sea witch Ursula to become human and pursue her dreams.',
    funFacts: [
      'Has a beautiful singing voice',
      'Collects human artifacts in her grotto',
      'Her best friend is Flounder the fish',
      'First Disney Princess with red hair',
    ],
    primaryColor: Color(0xFF20B2AA),
    secondaryColor: Color(0xFF8B008B),
    imagePath: 'assets/images/ariel.jpg',
  ),
  Princess(
    name: 'Belle',
    movie: 'Beauty and the Beast',
    tagline: 'Tale as Old as Time',
    description: 'Belle is intelligent, independent, and loves to read. She sees beyond appearances and discovers the kind heart within the Beast, breaking the curse through true love.',
    funFacts: [
      'Loves reading and has a vast library',
      'Her name means "beautiful" in French',
      'First brunette Disney Princess',
      'Symbol of inner beauty and intelligence',
    ],
    primaryColor: Color(0xFFFFD700),
    secondaryColor: Color(0xFF4169E1),
    imagePath: 'assets/images/belle.jpg',
  ),
  Princess(
    name: 'Jasmine',
    movie: 'Aladdin',
    tagline: 'A Whole New World',
    description: 'Princess Jasmine is strong-willed, independent, and refuses to be treated as a prize to be won. She seeks freedom and adventure, finding both with Aladdin.',
    funFacts: [
      'First Disney Princess of Middle Eastern descent',
      'Has a pet tiger named Rajah',
      'Signature color is turquoise',
      'Independent and outspoken',
    ],
    primaryColor: Color(0xFF40E0D0),
    secondaryColor: Color(0xFF4169E1),
    imagePath: 'assets/images/jasmine.jpg',
  ),
  Princess(
    name: 'Pocahontas',
    movie: 'Pocahontas',
    tagline: 'Colors of the Wind',
    description: 'Pocahontas is a free-spirited and wise Native American princess who follows her heart and listens to the spirits of nature. She bridges two worlds and promotes peace.',
    funFacts: [
      'Based on a real historical figure',
      'Has a connection with nature and animals',
      'Her companions include Meeko and Flit',
      'Symbol of bravery and cultural understanding',
    ],
    primaryColor: Color(0xFF8B4513),
    secondaryColor: Color(0xFF228B22),
    imagePath: 'assets/images/pocahontas.jpg',
  ),
  Princess(
    name: 'Mulan',
    movie: 'Mulan',
    tagline: 'Reflection',
    description: 'Mulan is brave, determined, and selfless. She disguises herself as a man to take her father\'s place in the army, becoming one of China\'s greatest warriors.',
    funFacts: [
      'First warrior Disney Princess',
      'Saved all of China',
      'Her dragon companion is Mushu',
      'Symbol of courage and honor',
    ],
    primaryColor: Color(0xFFDC143C),
    secondaryColor: Color(0xFFFFD700),
    imagePath: 'assets/images/mulan.jpg',
  ),
  Princess(
    name: 'Tiana',
    movie: 'The Princess and the Frog',
    tagline: 'Almost There',
    description: 'Tiana is hardworking, ambitious, and dreams of opening her own restaurant. She learns that while hard work is important, love and friendship matter too.',
    funFacts: [
      'First African American Disney Princess',
      'Excellent cook and entrepreneur',
      'Spent time as a frog',
      'Set in New Orleans',
    ],
    primaryColor: Color(0xFF32CD32),
    secondaryColor: Color(0xFFFFD700),
    imagePath: 'assets/images/tiana.jpg',
  ),
  Princess(
    name: 'Rapunzel',
    movie: 'Tangled',
    tagline: 'I See the Light',
    description: 'Rapunzel is creative, curious, and optimistic despite being locked in a tower. With her magical hair and adventurous spirit, she finally gets to see the world.',
    funFacts: [
      'Has 70 feet of magical golden hair',
      'Loves to paint and read',
      'Her hair glows when she sings',
      'Symbol of hope and adventure',
    ],
    primaryColor: Color(0xFFDA70D6),
    secondaryColor: Color(0xFFFFD700),
    imagePath: 'assets/images/rapunzel.jpg',
  ),
];
