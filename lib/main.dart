import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_project/pages/home_page.dart';
import 'package:flutter_test_project/config.dart';
import 'package:flutter_test_project/pages/page_one.dart';
import 'package:flutter_test_project/pages/page_two.dart';
import 'package:flutter_test_project/pages/login_page.dart';
import 'package:firebase/firebase.dart';
import 'package:flutter_test_project/firebase/service_account.dart';
import 'package:flutter_test_project/pages/layoutone.dart';

void main() {
    initializeApp(
        apiKey: ServiceAccount.apiKey,
        authDomain: ServiceAccount.authDomain,
        databaseURL: ServiceAccount.databaseUrl,
        projectId: ServiceAccount.projectID,
        storageBucket: ServiceAccount.storageUrl
    );
  router.define('/page_one', handler: new Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return new PageOne();
  }));
  router.define('/page_two', handler: new Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return new PageTwo();
  }));
  router.define('/login', handler: new Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return new LoginPage();
  }));
    router.define('layout-one', handler: new Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return new Layoutone();
    }));
    runApp(new MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/page_one',
      onGenerateRoute: router.generator
    ));
}


