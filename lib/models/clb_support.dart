import 'package:flutter/material.dart';
class CLB_SupportModel {
  int id;
  String? title, description, content, image;

  CLB_SupportModel({
    required this.id,
    this.title,
    this.description,
    this.content,
    this.image
  });

  factory CLB_SupportModel.fromJson(Map<String, dynamic> data)=>CLB_SupportModel(
    id: data['id'] as int,
    title: data['title'] as String?,
    description: data['description'] as String?,
    content: data['content'] as String?
  );

}

List<CLB_SupportModel> clb_support_screens = [
  CLB_SupportModel(
    title: 'Canada Learning Bond',
    description: 'Increase awareness and registration for CLB in black billingual communities in British columnbia',
    image: 'assets/images/student-smiling-01.jpg',
    content: """
      <h1> What is the Canada Learning Bond</h1>
      <p>In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as</p>
      <h1> What is the Canada Learning Bond</h1>
      <p>In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate </p>
      """, id: 1,
  ),

  CLB_SupportModel(
    title: 'Canada Learning Bond',
    description: 'Increase awareness and registration for CLB in black billingual communities in British columnbia',
    image: 'assets/images/student-studying-in-classroom.jpg',
    content: """
      <h1> How much can you recieve from CLB ?</h1>
      <p>In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as</p>
      <p>In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate </p>
      """, id: 2,
  ),

  CLB_SupportModel(

    title: 'Canada Learning Bond',
    description: 'Increase awareness and registration for CLB in black billingual communities in British columnbia',
    image: 'assets/images/students-graduation.jpg',
    content: """
      <h1> Get informed</h1>
      <p>In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as</p>

      """, id: 3,
  ),
  CLB_SupportModel(
    title: 'Canada Learning Bond',
    description: 'Increase awareness and registration for CLB in black billingual communities in British columnbia',
    image: 'assets/images/student-in-park.jpg',
    content: """
      <h1> Apply today</h1>
      <p>In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as</p>
      <p>In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as</p>

      """, id: 4,
  ),

];