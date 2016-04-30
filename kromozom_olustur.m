function kromozom=kromozom_olustur(alan)
kromozom=zeros(1,900);
kamera_sayisi=randi(20,1,1);
disp(kamera_sayisi);
for i=1:kamera_sayisi
a=randi(900,1,1);
kromozom(a)=1;
end
kromozom=reshape(kromozom,[30,30]);
end
