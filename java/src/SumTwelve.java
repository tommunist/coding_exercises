//Given a large array of unsigned ints, write a function to return the locations of the first 2 numbers whose sum is 12
//[ 1, 3, 2, 5, 1, 3, 3, 7, 9, 2, 4 ]


public void sumTwelve(Integer[]numbers){
        Integer firstElement=numbers[0];

        for(int i=0;i<numbers.length;i++){
        Integer found=hasTwelve(i,numbers);
        if(found>=0){
        return[numbers[i],found];
        }
        }
        }

public Integer hasTwelve(Integer index,List<Integer>numbers){

        for(Integer i;i<numbers.length();i++){
        if(index!=i&&numbers.get(i)+numbers.get(index)==12){
        return i;
        }
        }
        return-1;
        }

//[ 1, 3, 2, 5, 1, 3, 3, 7, 9, 2, 4 ]

public void sumTwelve(Integer[]numbers){
        Map<Integer, Integer>foundNumbers=new HashMap<Integer, Integer>();
        for(int i=0;i<numbers.length;i++){
        Integer valueNeeded=12-numbers[i];
        if(foundNumbers.containsKey(valueNeeded)){
        return new Array(){foundNumbers.get(valueNeeded),i};
        }
        foundNumbers.put(numbers[i],i);

        }

//Design Customers Who Bought This Item Also Bought: There is a feature on the Amazon site which shows the ‘Customers Who Bought This Item Also Bought’. How would you implement this feature?

//Item they just bought: List of 'related items'
// Map<Id, count>

        notifyOfPurchase(productId,userId)


        getAlsoBought(productId)
