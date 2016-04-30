function sansli=turnuva(uygunluk)

boyut=size(uygunluk,1)*size(uygunluk,2);
turnuva=zeros(4,1);
for i=1:4
	turnuva(i)=randi(boyut,1,1);
end
if uygunluk(turnuva(1))>uygunluk(turnuva(2))
	final(1)=turnuva(1);
else
	final(1)=turnuva(2);
end
if uygunluk(turnuva(3))>uygunluk(turnuva(4))
	final(2)=turnuva(3);
else
	final(2)=turnuva(4);
end
if uygunluk(final(1))>uygunluk(final(2))
	sansli=final(1);
else
	sansli=final(2);
end	

end
