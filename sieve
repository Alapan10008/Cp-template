vl sieve;
vl primes; 
void Generateprime(int N) {
    sieve.resize(N + 1);
    for(int i=1;i<N+1;i++){
        sieve[i]=i;
    }

    for (ll i = 2; i * i <= N; i++) {
        if (sieve[i]==i) {
            primes.push_back(i);
            for (ll j = i * i; j <= N; j += i) {
                if(sieve[j] == j){
                    sieve[j]=i;
                }
            }
        }
    }
}
