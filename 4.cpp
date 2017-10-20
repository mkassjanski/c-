#include <iostream>
using namespace std;

int main(){
  string haslo;
  cout << "Podaj hasło" << endl;
  cin >> haslo;
  if(haslo == "Jakub"){
    cout << "Haslo poprawne" << endl;
  }
  else{
    cout << "Hasło niepoprawne!" << endl;
  }
  return 0;
}
