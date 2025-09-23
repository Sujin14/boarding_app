import 'package:flutter/material.dart';
import '../models/notification_model.dart';
import '../services/api_service.dart';

class NotificationProvider with ChangeNotifier {
  List<NotificationModel> _allNotifications = [];
  List<NotificationModel> _displayNotifications = [];
  bool _isLoading = false;
  String? _error;

  List<NotificationModel> get notifications => _displayNotifications;
  bool get isLoading => _isLoading;
  String? get error => _error;

  final ApiService _apiService = ApiService();

  Future<void> fetchNotifications() async {
  _isLoading = true;
  _displayNotifications = [];
  notifyListeners();

  try {
    _allNotifications = await _apiService.fetchNotifications();
    _displayNotifications = _getRandomTen(_allNotifications);
    _error = null;
  } catch (e) {
    _error = e.toString();
  } finally {
    _isLoading = false;
    notifyListeners();
  }
}

  List<NotificationModel> _getRandomTen(List<NotificationModel> all) {
    if (all.length <= 10) return all;
    all.shuffle();
    return all.take(10).toList();
  }
}