import 'package:news_app/pages/business.dart';
import 'package:news_app/pages/health.dart';
import 'package:news_app/pages/science.dart';
import 'package:news_app/pages/sports.dart';
import 'package:news_app/pages/technology.dart';

List categories = [
  "Business",
  "Health",
  "Science",
  "Sports",
  "Technology"
];


List images = [
  "business.jpg",
  "health.jpg",
  "science.jpg",
  "sports.jpg",
  "technology.jpg",
];

List routes = [
  const BusinessPage(),
  const HealthPage(),
  const SciencePage(),
  const SportsPage(),
  const TechnologyPage(),

];