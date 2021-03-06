control ingress(inout bit<8> h) {
    @name("ingress.tmp") bit<7> tmp_0;
    @name("ingress.a") action a(@name("b") inout bit<7> b) {
        h[0:0] = 1w0;
    }
    apply {
        tmp_0 = h[7:1];
        a(tmp_0);
        h[7:1] = tmp_0;
    }
}

control c<H>(inout H h);
package top<H>(c<H> c);
top<bit<8>>(ingress()) main;

