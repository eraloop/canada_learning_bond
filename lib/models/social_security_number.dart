import 'package:flutter/material.dart';
class SINModel {
  int id;
  String? title, description, content, image;
  bool? isEnd;

  SINModel({
    required this.id,
    this.title,
    this.content,
    this.image,
    this.isEnd
  });

  // factory SINModel.fromJson(Map<String, dynamic> data)=>SINModel(
  //     id: data['id'] as int,
  //     title: data['title'] as String?,
  //     description: data['description'] as String?,
  //     content: data['content'] as String?
  // );

}

List<SINModel> sin_screens = [
  SINModel(
    title: 'Social Insurrance Number (SIN)',
    image: 'assets/images/laptop-coffee-cafe.jpg',
    isEnd: false,
    content: """
      <h1> What is the Canada Learning Bond</h1>
      <p>In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as</p>
      <h1> What is the Canada Learning Bond</h1>
      <p>In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate </p>
      <p> \u2022 In publishing and graphic design, Lorem ipsum is a placeholder </p>
      <p> \u2022 In publishing and graphic design, Lorem ipsum is a placeholder </p>
      """, id: 1,
  ),

  SINModel(
    title: 'Canada Learning Bond',
    image: '',
    isEnd: true,
    content: """
      <h1> Lost or stolen SIN?</h1>
      <p>In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as</p>
      <h1> Who needs a SIN?</h1>
      <p>In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as</p>

      <h1> Apply ?</h1>
      <p class="bullet_points">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as</p>
      <p> \u2022 In publishing and graphic design, Lorem ipsum is a placeholder </p>
      <p> \u2022 In publishing and graphic design, Lorem ipsum is a placeholder </p>
      <p> \u2022 In publishing and graphic design, Lorem ipsum is a placeholder </p>
      
      <button> Apply </button>
     
      """, id: 2,
  ),

];