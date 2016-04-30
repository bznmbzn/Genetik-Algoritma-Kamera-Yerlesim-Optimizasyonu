function mutant=mutasyon(krom)

boyut=size(krom,1)*size(krom,2);
bit=randi(boyut,1,1);
mutant=krom;
mutant(bit)=1-mutant(bit);

end
