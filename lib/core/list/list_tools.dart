import 'package:dartz/dartz.dart';

mixin ListOrder{

   static Map<String, int> reorder(int oldPos, 
                          int newPos, 
                          String id, 
                          List<String> ids, 
                          Function(String) fkt){
     
   Map<String, int> result = {};

      if(newPos < oldPos){
        for(String aId in ids){
            int idsPos = fkt(aId);
            if(idsPos >= newPos && idsPos < oldPos){
              idsPos = idsPos + 1;
            }
          result[aId] = idsPos;
        }
      }else{
        
        for(String aId in ids){
            int idsPos = fkt(aId);
            if(idsPos <= newPos && idsPos > oldPos){
              idsPos = idsPos -1;
            }
          result[aId] = idsPos;
        }
        
      }
      result[id] = newPos;
   
   return result;
  }
  static Tuple2< Map<String, int>,  Map<String, int>> neddedUpdatesOnDelete(int deletePos, 
                          List<String> ids, 
                          Function(String) fkt){
     
    Map<String, int> changed = {};
    Map<String, int> unChanged = {};
    for(String aId in ids){
        int idsPos = fkt(aId);
        if(idsPos > deletePos){
          idsPos = idsPos - 1;
          changed[aId] = idsPos;
        }else if(idsPos < deletePos){
          unChanged[aId] = idsPos;
        }
    }
      
    return Tuple2(changed, unChanged);
  }
  static Map<String, int> neddedUpdatesOnInsertAfterPos(int insertPos, 
                          List<String> ids, 
                          Function(String) fkt){
     
    Map<String, int> result = {};
    for(String aId in ids){
        int idsPos = fkt(aId);
        if(idsPos >= insertPos){
          idsPos = idsPos + 1;
        }
      result[aId] = idsPos;
    }
    return result;
  }

}