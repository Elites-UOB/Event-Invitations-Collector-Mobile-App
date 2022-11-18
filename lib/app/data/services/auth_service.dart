import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../utils/supabase_exception.dart';
import '../models/Auth.dart';

class AuthService extends GetxService {
  static final _supabase = Supabase.instance;
  static final error = false;

  static Future<void> signIn(AuthModel authUserForm) async {
    try {
      final result = await _supabase.client.auth.signInWithOtp(
        email: authUserForm.email!,
        emailRedirectTo:
            kIsWeb ? null : 'io.supabase.flutter://signin-callback/',
      );
      if (error != null) {
        // throw SupabaseException(
        //     "error_db_unknown_title".tr, result.error!.message);
      }
      if (error == null) {
        throw SupabaseException(
            "error_db_unknown_title".tr, "auth_aas_es_m_error_sign_in".tr);
      }
    } catch (e) {
      if (kDebugMode) {
        print("AuthApiService - signIn - e : $e");
      }
      rethrow;
    }
  }
}
