import 'dart:async';

import 'package:flutter/material.dart';
import 'package:magang_2/movie_response.dart';
import 'package:magang_2/movie_response_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<MovieResponse>? movies;
  bool isLoaded = false;
  @override
  void initState(){
    super.initState();
    loadMovies();
  }
  Future<void> loadMovies() async {
    final movieResponseService = MovieResponseService();
    movies = (await movieResponseService.getAllMovies()) as List<MovieResponse>?;
    setState(() {
      isLoaded = true;
    });
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: isLoaded && movies != null
          ? SafeArea(
              child: Column(
                children: [
                  SizedBox(height: 10,)
                ]
              ),
            )
          : const Center(child: CircularProgressIndicator()),
    );
  }
}