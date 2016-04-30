function sayac=uygunluk_hesapla(kromozom)
evler=[45,87,156,190,200,259,300,351,542,655,789,843];

sayac=0;1;
alan=zeros(30,30); %bos alan yarattÄ±k ki evleri halledelim
for i=1:size(evler,2) 
    alan(evler(i))=2; %evlerin konumu 2 yapÄ±ldÄ±.
end

for x=1:30
    for y=1:30
        if kromozom(y,x)==1 % kamerayÄ± bulduk konumunu yerini.

%saga ve asagÄ± bakarken.
            if x<15 && y<15
                for x1=x:30 %evlerin konuma uzaklÄ±gÄ±nÄ± bulmak iÃ§in. 
                    for y1=y:30 %yanlÄ±z x ve y den baslattÄ±kkÄ± yonu halletsin. 
                        if alan(y1,x1)==2 %evin konumunu bulup
                            
                            uzaklik=sqrt((x-x1)^2+(y-y1)^2);
                            %kameranÄ±n taradÄ±gÄ± uzaklÄ±k evi goruyomu
                            if uzaklik<=5
                                sayac=sayac+1;
                            end 
                        end
                    end
                end
            end
%saga ve yukarÄ± bakarken.
            if x<15 && y>15
                for x1=x:30  
                    for y1=y:1 
                        if alan(y1,x1)==2 
                            uzaklik=sqrt((x-x1)^2+(y-y1)^2);
                            if uzaklik<=5
                                sayac=sayac+1;
                            end
                        end
                    end
                end
            end
           
%sola ve yukarÄ± bakarken.
            if x>15 && y>15
                for x1=x:1  
                    for y1=y:1 
                        if alan(y1,x1)==2 
                            uzaklik=sqrt((x-x1)^2+(y-y1)^2);
                            if uzaklik<=5
                                sayac=sayac+1;
                            end
                        end
                    end
                end
            end
%sola ve asagÄ± bakarken.
            if x>15 && y<15
                for x1=x:1  
                    for y1=y:30 
                        if alan(y1,x1)==2 
                            uzaklik=sqrt((x-x1)^2+(y-y1)^2);
                            if uzaklik<=5
                                sayac=sayac+1;
                            end
                        end
                    end
                end
            end

%kameramda x konumum 15 te iken y asagÄ± bakmasÄ±.

                sayac1=0;
                sayac2=0;
            if x==15 && y<15
                for x1=x:1  
                    for y1=y:30 
                        if alan(y1,x1)==2 
                            uzaklik=sqrt((x-x1)^2+(y-y1)^2);
                            if uzaklik<=5
                                sayac1=sayac1+1;
                            end
                        end
                    end
                end
            
                for x1=x:1  
                    for y1=y:30 
                        if alan(y1,x1)==2 
                            uzaklik=sqrt((x-x1)^2+(y-y1)^2);
                            if uzaklik<=5
                                sayac2=sayac2+1;
                            end
                        end
                    end
                end
            end
            if sayac2>sayac1
                sayac=sayac+sayac2;
    
            else
                sayac=sayac+sayac1;
            end
        end

%kameram x konumum 15 te iken y yukarÄ±.

            sayac1=0;
            sayac2=0;
        if x==15 && y>15
            for x1=x:30 
                for y1=y:1 
                    if alan(y1,x1)==2 
                        uzaklik=sqrt((x-x1)^2+(y-y1)^2);
                        if uzaklik<=5
                            sayac1=sayac1+1;
                        end
                    end
                end
            end
        
            for x1=x:1  
                for y1=y:1
                    if alan(y1,x1)==2 
                        uzaklik=sqrt((x-x1)^2+(y-y1)^2);
                        if uzaklik<=5
                            sayac2=sayac2+1;
                        end
                    end
                end
            end
        
            if sayac2>sayac1
                sayac=sayac+sayac2;
            else
                sayac=sayac+sayac1;
            end
        end

%kameram y konumu 15 iken x saga.

            sayac1=0;
            sayac2=0;
        if x<15 && y==15
            for x1=x:30  
                for y1=y:30 
                    if alan(y1,x1)==2 
                        uzaklik=sqrt((x-x1)^2+(y-y1)^2);
                        if uzaklik<=5
                            sayac1=sayac1+1;
                        end
                    end
                end
            end
        
            for x1=x:30 
                for y1=y:1 
                    if alan(y1,x1)==2 
                        uzaklik=sqrt((x-x1)^2+(y-y1)^2);
                        if uzaklik<=5
                            sayac2=sayac2+1;
                        end
                    end
                end
            end
        
            if sayac2>sayac1
                sayac=sayac+sayac2;
            else
                sayac=sayac+sayac1;
            end
        end
%kameram y konumu 15 iken x sola.

            sayac1=0;
            sayac2=0;
        if x==15 && y<15
            for x1=x:1  
                for y1=y:30 
                    if alan(y1,x1)==2 
                        uzaklik=sqrt((x-x1)^2+(y-y1)^2);
                        if uzaklik<=5
                            sayac1=sayac1+1;
                        end
                    end
                end
            end
        
            for x1=x:1  
                for y1=y:1
                    if alan(y1,x1)==2 
                        uzaklik=sqrt((x-x1)^2+(y-y1)^2);
                        if uzaklik<=5
                            sayac2=sayac2+1;
                        end
                    end
                end
            end
        
            if sayac2>sayac1
                sayac=sayac+sayac2;
            else
                sayac=sayac+sayac1;
            end
        end
%tam orta nokta.
        if x==15 && y==15
            for x1=x:30  
                for y1=y:1 
                    if alan(y1,x1)==2 
                        uzaklik=sqrt((x-x1)^2+(y-y1)^2);
                        if uzaklik<=5
                            sayac=sayac+1;
                        end
                    end
                end
            end
        end    
    end
end





end
