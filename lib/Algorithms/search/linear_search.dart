int linearsearch(List array, int value) {
  int i = 0;
  while (i < array.length) {
    if (array[i] == value) {
      return i;
    }
    i++;
  }
  return -1;
}

void main(){
  List array=[19,2,3,45,5,6,100,8,66,10,11,12,13,4,5];
  int value =4;
  int result=linearsearch(array, value);
  if(result==-1){
    print('element not found');
  }else{
    print('$value is at position $result ');
  }
}



