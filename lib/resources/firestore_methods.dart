import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FireStoreMethods {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Stream<QuerySnapshot<Map<String, dynamic>>>? get meetingsHistory {
    final currentUser = _auth.currentUser;
    if (currentUser != null) {
      return _firestore
          .collection('users')
          .doc(currentUser.uid)
          .collection('meetings')
          .snapshots();
    } else {
      return null; // Return null if no user is logged in
    }
  }


}
