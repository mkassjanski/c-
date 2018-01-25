mtype = {PLN2, PLN5, MILK, DARK}

chan kanal_pieniadze = [0] of { mtype };
chan kanal_batony = [0] of { mtype };

active proctype User(){
    do
    ::kanal_pieniadze!PLN2;
S0:         printf("Wrzucilem PLN2\n");
            kanal_batony?MILK;
S3:         printf("==> Klient <== Pobieram Milk\n");
         ::kanal_pieniadze!PLN5;
            kanal_batony?DARK;     
    od
}

active proctype Automat(){
    do
         ::kanal_pieniadze?PLN2;
S1:         printf("Pobieram PLN2\n");
            kanal_batony!MILK;
S2:         printf("Wysylam Milk\n");
        ::kanal_pieniadze?PLN5;
            printf("Pobieram PLN5\n");
            kanal_batony!DARK;
            printf("Wysylam Dark\n");
    od
}

ltl formMoneta2ToBatonikMilk  { PLN2 -> MILK }
ltl formMoneta5ToBatonikDark  { PLN5 -> DARK }
