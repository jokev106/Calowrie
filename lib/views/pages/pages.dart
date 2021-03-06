import 'dart:async';
import 'dart:io';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:calowrie/model/models.dart';
import 'package:calowrie/services/services.dart';
import 'package:calowrie/shared/shared.dart';
import 'package:calowrie/views/widgets/widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:carousel_slider/carousel_slider.dart';

part 'splash_screen.dart';
part 'splash_pages.dart';
part 'login_pages.dart';
part 'list_menu.dart';
part 'register_pages.dart';
part 'menu_detail.dart';
part 'admin_area.dart';
part 'listmenu_admin.dart';
part 'cook_detail.dart';
part 'createmenu_admin.dart';
part 'editmenu_admin.dart';
part 'home_page.dart';
part 'account.dart';
part 'info_calowrie.dart';
part 'test.dart';