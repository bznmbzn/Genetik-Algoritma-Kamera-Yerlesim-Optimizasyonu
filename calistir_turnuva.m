function en_iyiler=calistir_turnuva()

	alan=[30,30];  % sensor yerlestirilen alanin kutucuk sayisi
	birey_say=100;
	dongu_sayisi=100;
	populasyon=zeros(alan(1),alan(2),birey_say);
	for i=1:birey_say
		populasyon(:,:,i)=kromozom_olustur(size(alan));
	end

	en_iyiler=zeros(dongu_sayisi,1);
	for a=1:dongu_sayisi
		uygunluk=zeros(birey_say,1);
		for i=1:birey_say
			uygunluk(i)=uygunluk_hesapla(populasyon(:,:,i));
		end
		anne=populasyon(:,:,turnuva(uygunluk));
		baba=populasyon(:,:,turnuva(uygunluk));
		[cocuk1 cocuk2]=caprazla(anne,baba);
		cocuk1=mutasyon(cocuk1);
		cocuk2=mutasyon(cocuk2);
		populasyon(:,:,birey_say+1)=cocuk1;
		populasyon(:,:,birey_say+2)=cocuk2;
		birey_say=birey_say+2;
		en_iyiler(a)=max(uygunluk(:));
	end

end
