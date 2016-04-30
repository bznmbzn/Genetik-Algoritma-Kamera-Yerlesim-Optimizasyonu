function [cocuk1 cocuk2]=caprazla(krom1,krom2)

cocuk1=zeros(size(krom1));
cocuk2=zeros(size(krom1));
boyut=size(krom1,1)*size(krom1,2);
orta=round(boyut/2);
cocuk1(1:orta)=krom1(1:orta);
cocuk2(1:orta)=krom2(1:orta);
cocuk1((orta+1):boyut)=krom2((orta+1):boyut);
cocuk2((orta+1):boyut)=krom1((orta+1):boyut);

end
