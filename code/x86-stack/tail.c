int add5(int a)
{
        return a + 5;
}

int add10(int a)
{
        int b = add5(a); // not tail
        return add5(b); // tail
}

int add5AndTriple(int a) {
        int b = add5(a); // not tail
        return 3 * add5(a); // not tail, doing work after the call
}

int finicky(int a) {
        if (a > 10) {
                return add5AndTriple(a); // tail
        }

        if (a > 5) {
                int b = add5(a); // not tail
                return finicky(b); // tail
        }

        return add10(a); // tail
}
