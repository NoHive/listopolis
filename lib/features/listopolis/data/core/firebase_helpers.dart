import 'package:cloud_firestore/cloud_firestore.dart';

const PUBLIC_LISTS_PATH = "sharedLists";
const GROUP_K_AND_B = "k_b";
const ACTIVE_LISTS = "activeLists";

// strcture:
// /sharedLists/k&b/activeLists

extension FirebaseExt on FirebaseFirestore{
  Future<DocumentReference<Map<String, dynamic>>>  publicLists() async {
    return FirebaseFirestore.instance.collection(PUBLIC_LISTS_PATH).doc(GROUP_K_AND_B);
  }
}

extension DocumentReferenceExt on DocumentReference{
  // kAndBLists.activeListCollection.where("position",isNotEqualTo: -1).orderBy("position").get();
  CollectionReference<Map<String, dynamic>> get activeListCollection => collection(ACTIVE_LISTS);
}

extension CollectionRefEct on CollectionReference<Map<String, dynamic>>{
  Future<QuerySnapshot<Map<String, dynamic>>> get currentLists => where("position", isNotEqualTo: -1).orderBy("position").get();
}