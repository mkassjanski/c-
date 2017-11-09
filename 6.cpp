#include <iostream>
using namespace std;

int main()
{
  int ocena;
  cout << "podaj ocene" <<endl;
  cin >> ocena;
  switch (ocena)
  {
  case 1: cout << " brak promocji ";
   break;
  case 2:
  case 3:
  case 4:
  case 5:
   cout << " promocja do nastepnej klasy ";
   break;
  case 6:
   cout << " promocja z ocena celujaca";
   break;
  default:
   cout << "Bledny numer oceny";
  }
}
