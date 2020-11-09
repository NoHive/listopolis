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

}