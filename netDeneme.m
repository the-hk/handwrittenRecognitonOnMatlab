clear all;
clc;
%burada kullanıcıdan input alıyoruz ve öncesinde bazı belirli stringler
%belirlemiştik bu stringler sayesinde hangi egitilmiş agi cagiracagiz onu
%bulacagiz ve hazırladığımız if bloklarına sokup kimin el yazısı onu
%bulmaya çalışacağız
a=input("hangi kategoriden resim deneyeceksiniz?:  ","s");
string1='Elma';
string2='Armut';
string3='Murat Ceylan';
string4='Sayisal Goruntu';

%fotografın lokasyonu
resimPath='C:\Users\hmk44\OneDrive\Documents\MATLAB\git_project\Elma\Elma2_u.jpeg';

%resim yükle

deneme1=imread(resimPath);
deneme1=imbinarize(deneme1);
deneme1=imresize(deneme1,[100 100]);
deneme1=double(deneme1);

%gürültü ekleme
deneme1=deneme1+rand(100,100); 
deneme1=reshape(deneme1,[],1);


%gosterilecek fotografı yeniden boyutlandırma
foto = imread(resimPath);
foto=imbinarize(foto);
foto=imresize(foto,[500 500]);
foto=double(foto);
imshow(foto)
foto=foto+rand(500);
%burada if state lerimiz başlıyor eger elma ise bu state e girecek 
if strcmp(string1,a)
    %burada ise hangi egitilmis olan net yuklenecek ona karar veriyoruz
    load elma
%burada eğittimiz ag ile belirledigimiz fotografin simulasyonunu yaptırıyoruz      
X=sim(net,deneme1);
%burada X matisindeki max degeri ve o degerein index ini buluyoruz
[max_num,max_idx] = max(X());
if(max_idx == 1 || max_idx == 4 || max_idx == 7)
    if max_num>=0.89
        %burada fotonun ustune text i bastırıyoruz
        J = insertText(foto, [0 400 ], 'Bu Elif Beyza Sertbakan nin el yazisi','FontSize',26);
        imshow(J);
    else
        
        J = insertText(foto, [0 400 ], 'eslesme bulunamadi','FontSize',26);
        imshow(J);
    end
    
elseif(max_idx == 2 || max_idx == 5 || max_idx == 8)
    if max_num>=0.89
        J = insertText(foto, [0 400 ], 'Bu Tahir Saz in el yazisi','FontSize',26);
        imshow(J);
    else
        J = insertText(foto, [0 400], 'eslesme bulunamadi','FontSize',26);
        imshow(J);
    end
    
elseif(max_idx == 3 || max_idx == 6 || max_idx == 9)
    if max_num>=0.89
        J = insertText(foto, [0 400], 'Bu Ufuk Salgin in  yazisi','FontSize',26);
        imshow(J);
    else
        J = insertText(foto, [0 400], 'eslesme bulunamadi','FontSize',26);
        imshow(J);
    end
    
end
elseif strcmp(string2,a)
     load ArmutDeneme
     
X=sim(net,deneme1);
[max_num,max_idx] = max(X());
if(max_idx == 1 || max_idx == 4 || max_idx == 7)
    if max_num>=0.89
        
        J = insertText(foto, [0 400], 'Bu Elif Beyza Sertbakan nin el yazisi','FontSize',26);
        imshow(J);
    else
        
        J = insertText(foto, [0 400 ], 'eslesme bulunamadi','FontSize',26);
        imshow(J);
    end
    
elseif(max_idx == 2 || max_idx == 5 || max_idx == 8)
    if max_num>=0.89
        J = insertText(foto, [0 400 ], 'Bu Tahir Saz in el yazisi','FontSize',26);
        imshow(J);
    else
        J = insertText(foto, [0 400], 'eslesme bulunamadi','FontSize',26);
        imshow(J);
    end
    
elseif(max_idx == 3 || max_idx == 6 || max_idx == 9)
    if max_num>=0.89
        J = insertText(foto, [0 400], 'Bu Ufuk Salgin in  yazisi','FontSize',26);
        imshow(J);
    else
        J = insertText(foto, [0 400], 'eslesme bulunamadi','FontSize',26);
        imshow(J);
    end
    
end
elseif strcmp(string3,a)
    load MuratCeylan
    
X=sim(net,deneme1);
[max_num,max_idx] = max(X());
if(max_idx == 1 || max_idx == 4 || max_idx == 7)
    if max_num>=0.89
        
        J = insertText(foto, [0 400], 'Bu Elif Beyza Sertbakan nin el yazisi','FontSize',26);
        imshow(J);
    else
        
        J = insertText(foto, [0 400], 'eslesme bulunamadi','FontSize',26);
        imshow(J);
    end
    
elseif(max_idx == 2 || max_idx == 5 || max_idx == 8)
    if max_num>=0.89
        J = insertText(foto, [0 400], 'Bu Tahir Saz in el yazisi','FontSize',26);
        imshow(J);
    else
        J = insertText(foto, [0 400], 'eslesme bulunamadi','FontSize',26);
        imshow(J);
    end
    
elseif(max_idx == 3 || max_idx == 6 || max_idx == 9)
    if max_num>=0.89
        J = insertText(foto, [0 400], 'Bu Ufuk Salgin in  yazisi','FontSize',26);
        imshow(J);
    else
        J = insertText(foto, [0 400], 'eslesme bulunamadi','FontSize',26);
        imshow(J);
    end
    
end
elseif strcmp(string4,a)
    load SayisalGoruntu
    
 X=sim(net,deneme1);
[max_num,max_idx] = max(X());
if(max_idx == 1 || max_idx == 4 || max_idx == 7)
    if max_num>=0.89
        
        J = insertText(foto, [0 400], 'Bu Elif Beyza Sertbakan nin el yazisi','FontSize',26);
        imshow(J);
    else
        
        J = insertText(foto, [0 400], 'eslesme bulunamadi','FontSize',26);
        imshow(J);
    end
    
elseif(max_idx == 2 || max_idx == 5 || max_idx == 8)
    if max_num>=0.89
        J = insertText(foto, [0 400], 'Bu Tahir Saz in el yazisi','FontSize',26);
        imshow(J);
    else
        J = insertText(foto, [0 400], 'eslesme bulunamadi','FontSize',26);
        imshow(J);
    end
    
elseif(max_idx == 3 || max_idx == 6 || max_idx == 9)
    if max_num>=0.89
        J = insertText(foto, [0 400], 'Bu Ufuk Salgin in  yazisi','FontSize',26);
        imshow(J);
    else
        J = insertText(foto, [0 401], 'eslesme bulunamadi','FontSize',26);
        imshow(J);
    end
    
end
else
    disp("yanlis bir karakter girdiniz?")
end
