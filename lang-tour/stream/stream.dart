import 'dart:async';

Stream<int> countStream(int to ) async* {
  for (int i = 0; i <= to; i++) {
    print(i);
    yield i;
  }
} 

Future<int> sumStream(Stream<int> stream) async {
  var sum = 0;
  await for (var value in stream){
    sum += value;
    print(sum);
  }
  
  return sum;    
}

void main () async {
  var stream = countStream(10);
  var sum = await sumStream(stream);
  print(sum);
}
