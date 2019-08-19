// Copyright 2019 Joshua de Guzman (https://joshuadeguzman.github.io). All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_app/shared/models/route_channel_message.dart';
import 'package:flutter_app/embedded/embedded.dart';

enum Routes { EmbeddedFruits }

class Router {
  static Widget setupRouteFromMessage(
    BuildContext context,
    Map<String, dynamic> json,
  ) {
    final channelMessage = RouteChannelMessage.fromJson(json);
    final route = routesFromName(channelMessage.route);

    switch(route) {
      case Routes.EmbeddedFruits:
        return FruitsEmbedded();
    }

    return Container();
  }

  static Routes routesFromName(String name) {
    switch (name) {
      case "/embeddedFruits":
        return Routes.EmbeddedFruits;
    }
    return null;
  }
}
