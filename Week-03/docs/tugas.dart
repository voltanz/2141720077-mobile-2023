void main() {
  List<int> primes = generatePrime(201);

  String primesString = primes.join(', ');

  print(primesString);

  print("Nama : Ahmad Bima Tristan Ibrahim");
  print("NIM  : 2141720077");
}

List<int> generatePrime(int max) {
  List<int> primes = [];
  List<bool> isPrime = List.filled(max, true);

  for (int i = 2; i < max; i++) {
    if (isPrime[i]) {
      primes.add(i);

      for (int j = i * i; j < max; j += i) {
        isPrime[j] = false;
      }
    }
  }

  return primes;
}