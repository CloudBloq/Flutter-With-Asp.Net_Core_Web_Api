import 'package:flutter/material.dart';

import './Model/Category.dart';
import 'Service/Model/Service.dart';
import 'Model/Technicians.dart';



const DUMMY_CATEGORIES = const [
Category(
  id: 1,
  title: 'Italian',
  imageUrl:
  'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',

),

    Category(
id: 2,
title: 'Quick & Easy',
      imageUrl:
      'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
),
Category(
id: 3,
title: 'Hamburgers',
  imageUrl:
  'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
),
Category(
id: 4,
title: 'German',
    imageUrl:
    'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg'
),
Category(
id: 5,
title: 'Light & Lovely',
  imageUrl:
  'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
),
Category(
id: 6,
title: 'Exotic',
  imageUrl:
  'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
)
];
/*
const  DUMMY_SERVICES = [
  Service(id:1, title:"Fix Stove",imageUrl:'fixit.png',categoryId:1, description:'Repair stove that is not working well'),
  Service(id:1, title:"Fix Stove",imageUrl:'fixit.png',categoryId:1, description:'Repair stove that is not working well'),
  Service(id:1, title:"Fix Stove",imageUrl:'fixit.png',categoryId:1, description:'Repair stove that is not working well'),
  Service(id:1, title:"Fix Stove",imageUrl:'fixit.png',categoryId:1, description:'Repair stove that is not working well'),
  Service(id:1, title:"Fix Stove",imageUrl:'fixit.png',categoryId:1, description:'Repair stove that is not working well'),

  Service(id:2, title:"Fix Frige",imageUrl:'fixit.png',categoryId:1, description:'Repair stove that is not working well'),
  Service(id:2, title:"Fix Frige",imageUrl:'fixit.png',categoryId:1, description:'Repair stove that is not working well'),
  Service(id:2, title:"Fix Frige",imageUrl:'fixit.png',categoryId:1, description:'Repair stove that is not working well'),
  Service(id:2, title:"Fix Frige",imageUrl:'fixit.png',categoryId:1, description:'Repair stove that is not working well'),
  Service(id:2, title:"Fix Frige",imageUrl:'fixit.png',categoryId:1, description:'Repair stove that is not working well'),

  Service(id:3, title:"Fix Metad",imageUrl:'fixit.png',categoryId:2, description:'Repair stove that is not working well'),
  Service(id:3, title:"Fix Metad",imageUrl:'fixit.png',categoryId:2, description:'Repair stove that is not working well'),
  Service(id:3, title:"Fix Metad",imageUrl:'fixit.png',categoryId:2, description:'Repair stove that is not working well'),
  Service(id:3, title:"Fix Metad",imageUrl:'fixit.png',categoryId:2, description:'Repair stove that is not working well'),
  Service(id:3, title:"Fix Metad",imageUrl:'fixit.png',categoryId:2, description:'Repair stove that is not working well'),

  Service(id:4, title:"Fix Stove",imageUrl:'fixit.png',categoryId:3, description:'Repair stove that is not working well'),
  Service(id:4, title:"Fix Stove",imageUrl:'fixit.png',categoryId:3, description:'Repair stove that is not working well'),
  Service(id:4, title:"Fix Stove",imageUrl:'fixit.png',categoryId:3, description:'Repair stove that is not working well'),
  Service(id:4, title:"Fix Stove",imageUrl:'fixit.png',categoryId:3, description:'Repair stove that is not working well'),
  Service(id:4, title:"Fix Stove",imageUrl:'fixit.png',categoryId:3, description:'Repair stove that is not working well'),

  Service(id:5, title:"Fix Stove",imageUrl:'fixit.png',categoryId:2, description:'Repair stove that is not working well'),
  Service(id:5, title:"Fix Stove",imageUrl:'fixit.png',categoryId:2, description:'Repair stove that is not working well'),
  Service(id:5, title:"Fix Stove",imageUrl:'fixit.png',categoryId:2, description:'Repair stove that is not working well'),
  Service(id:5, title:"Fix Stove",imageUrl:'fixit.png',categoryId:2, description:'Repair stove that is not working well'),
  Service(id:5, title:"Fix Stove",imageUrl:'fixit.png',categoryId:2, description:'Repair stove that is not working well'),

  Service(id:6, title:"Fix Stove",imageUrl:'fixit.png',categoryId:4, description:'Repair stove that is not working well'),
  Service(id:6, title:"Fix Stove",imageUrl:'fixit.png',categoryId:4, description:'Repair stove that is not working well'),
  Service(id:6, title:"Fix Stove",imageUrl:'fixit.png',categoryId:4, description:'Repair stove that is not working well'),
  Service(id:6, title:"Fix Stove",imageUrl:'fixit.png',categoryId:4, description:'Repair stove that is not working well'),
  Service(id:6, title:"Fix Stove",imageUrl:'fixit.png',categoryId:4, description:'Repair stove that is not working well'),


];
  */

const  DUMMY_TECHNICIANS = [
  Technician(id: 1, name: "Yared Solmon", imageUrl: './Assets/Images/yared.jpg'),
  Technician(id: 2, name: "Ashenafi Chufamo", imageUrl: './Assets/Images/electrician.png'),
  Technician(id: 3, name: "Getachew Tebekew", imageUrl: './Assets/Images/mech.png'),
  Technician(id: 4, name: "Fasikaw Kindea", imageUrl: './Assets/Images/plumber.png'),
  Technician(id: 5, name: "Some one 1", imageUrl: './Assets/Images/welder.png'),
  Technician(id: 6, name: "Some one 2", imageUrl: './Assets/Images/worker_profile.png'),

  ];

