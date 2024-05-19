import 'package:flutter_rpg/model/skill.dart';
import 'package:flutter_rpg/model/stats.dart';
import 'package:flutter_rpg/model/vocation.dart';

class Character with Stats {
  //constructor
  Character({
    required this.name,
    required this.slogan,
    required this.vocation,
    required this.id,
  });

  // fields
  final Set<Skill> skills = {};
  final Vocation vocation;
  final String name;
  final String slogan;
  final String id;
  bool _isFav = false;

  // getters
  bool get isFav => _isFav;

  void toggleIsFav() {
    _isFav = !_isFav;
  }

  void updateSkill(Skill skill) {
    skills.clear();
    skills.add(skill);
  }
}

// dummy character data

List<Character> characters = [
  Character(
    name: 'Klara',
    slogan: 'Kamupf',
    vocation: Vocation.wizard,
    id: '1',
  ),
  Character(
    name: 'Jonny',
    slogan: 'Light me up',
    vocation: Vocation.junkie,
    id: '2',
  ),
  Character(
    name: 'Crimson',
    slogan: 'Fire in the hotel',
    vocation: Vocation.raider,
    id: '3',
  ),
  Character(
    name: 'Shaun',
    slogan: 'Alright the gang',
    vocation: Vocation.ninja,
    id: '4',
  ),
];
